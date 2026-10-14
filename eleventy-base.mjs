/* ENV */
import 'dotenv/config';

/* MODULES */
import { load } from 'js-yaml';
import pluginRss, { dateToRfc3339, dateToRfc822 } from "@11ty/eleventy-plugin-rss";
import eleventyNavigationPlugin from "@11ty/eleventy-navigation";
import jwt from 'jsonwebtoken';
import markdownIt from 'markdown-it';
import markdownItAnchor from 'markdown-it-anchor';

const md = markdownIt({
  html: true,
  breaks: true,
  linkify: true,
}).use(markdownItAnchor, {
  slugify: (s) =>
    s
      .trim()
      .toLowerCase()
      .replace(/[^\w\s-]/g, '')
      .replace(/\s+/g, '-')
});

const hashCode = function (s) {
  var hash = 0,
    i,
    chr;
  if (s.length === 0) return hash;
  for (i = 0; i < s.length; i++) {
    chr = s.charCodeAt(i);
    hash = (hash << 5) - hash + chr;
    hash |= 0;
  }
  return (hash >>> 0).toString(16);
};

function config(baseUrl) {
  return function (eleventyConfig) {
    eleventyConfig.setLibrary("md", md);

    /* GLOBAL DATA */
    eleventyConfig.addGlobalData("baseUrl", baseUrl);
    eleventyConfig.addGlobalData('env', process.env);

    /* PASSTHROUGH COPIES */
    eleventyConfig.addPassthroughCopy('assets');
    eleventyConfig.addPassthroughCopy('favicon.ico');
    eleventyConfig.addPassthroughCopy('robots.txt');
    /* DATA EXTENSIONS */
    eleventyConfig.addDataExtension('yaml', (contents) => load(contents));
    /* PLUGINS */
    eleventyConfig.addPlugin(pluginRss);
    /* FILTERS */
    eleventyConfig.addFilter('hashcode', (s) => hashCode(s));
    eleventyConfig.addFilter('markdown', (markdownString) =>
      md.render(markdownString)
    );
    eleventyConfig.addFilter("absoluteUrl", function (url, base = eleventyConfig.globalData.baseUrl) {
      try {
        return new URL(url, base).href;
      } catch (err) {
        console.error(err);
        return url;
      }
    });
    eleventyConfig.addLiquidFilter("dateToRfc3339", dateToRfc3339);
    eleventyConfig.addLiquidFilter("dateToRfc822", dateToRfc822);

    // Take Eleventy's default "YY-MM-DD" to "Month DD, YYYY"
    // Usage: {{ dateString | friendlydate }}
    eleventyConfig.addFilter("friendlydate", (dateString) =>
      new Date(dateString).toLocaleDateString("en-us", {
        month: "long",
        day: "numeric",
        year: "numeric",
      })
    );
    // Limit a collection to the first N items
    // Usage: {{ collection | limit(N) }}
    eleventyConfig.addFilter("limit", function (array, limit) {
      return array.slice(0, limit);
    });
    // Remove the first character from a string
    // Usage: {{ string | remove_leading_char }}
    // Ex. "/href/" -> "href/"
    eleventyConfig.addFilter("remove_leading_char", function (contents) {
      return contents.slice(1, contents.length);
    });

    // Sort an array by path name. Used to ensure collections are sorted by 01, 02, ...
    // Rather than by creation date.
    eleventyConfig.addFilter("sortAscendingByName", function (array) {
      if (!array || !Array.isArray(array)) {
        return [];
      }

      return array.sort(function (a, b) {
        return a.inputPath.localeCompare(b.inputPath);
      });
    });

    // The eleventyNavigation plugin doesn't like using filtered down collections.
    // So, filter a collection by the contents of `sidenav_group`.
    // Return the eleventyNavigation assignments with the current URL, to act as though the eleventyNavigation plugin created it.
    eleventyConfig.addFilter("sidenavGroupFilter", function (collection, group) {
      if (!group) return collection;
      const filtered = collection
        .filter((item) => item.data.sidenav_group == group)
        .map((a) => Object.assign(a.data.eleventyNavigation, { url: a.url }))
        .sort((a, b) => a.order - b.order);
      return filtered;
    });

    // Sign a Metabase guest-embedding JWT at build time, such that the token never reaches the browser.
    // This token expires. Since it's generated on build rather than on site load or on request, we want it to last a long time.
    // I'm defaulting to 180 days. We'll drop it if/when we can rebuild more often, or opt to generate these on load/request.
    // Ex. {% metabaseToken 1 %}
    eleventyConfig.addShortcode("metabaseToken", (dashboardId) => {
      const secret = process.env.METABASE_SECRET_KEY;
      if (!secret) {
        console.warn("METABASE_SECRET_KEY is not set; skipping Metabase token.");
        return "";
      }
      // 180 days in seconds
      const ttl = Number(process.env.METABASE_TOKEN_TTL) || 60 * 60 * 24 * 180;
      return jwt.sign(
        {
          resource: { dashboard: Number(dashboardId) },
          params: {},
          // now() in seconds plus TTL
          exp: Math.round(Date.now() / 1000) + ttl,
        },
        secret
      );
    });

    eleventyConfig.addPlugin(eleventyNavigationPlugin);

    return {
      markdownTemplateEngine: 'njk',
      dir: {
        pathPrefix: baseUrl,
        input: 'src',
        includes: '_includes',
        data: '_data',
        output: '_site',
      },
    };
  }
};

export default config;
