/* MODULES */
const jwt = require("jsonwebtoken");
const yaml = require('js-yaml');
const pluginRss = require("@11ty/eleventy-plugin-rss");
const eleventyNavigationPlugin = require("@11ty/eleventy-navigation");

const md = require('markdown-it')({
  html: false,
  breaks: true,
  linkify: true,
});

const METABASE_SECRET_KEY = process.env.METABASE_SECRET_KEY;

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
    /* GLOBAL DATA */
    eleventyConfig.addGlobalData("baseUrl", baseUrl);
    /* PASSTHROUGH COPIES */
    eleventyConfig.addPassthroughCopy('assets');
    eleventyConfig.addPassthroughCopy('favicon.ico');
    eleventyConfig.addPassthroughCopy('robots.txt');
    /* DATA EXTENSIONS */
    eleventyConfig.addDataExtension('yaml', (contents) => yaml.load(contents));
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
    eleventyConfig.addLiquidFilter("dateToRfc3339", pluginRss.dateToRfc3339);
    eleventyConfig.addLiquidFilter("dateToRfc822", pluginRss.dateToRfc822);

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

    eleventyConfig.addShortcode("iFrameUrl", function () {
      const METABASE_SITE_URL = "https://metabase-sandbox.app.cloud.gov";

      const payload = {
        resource: { dashboard: 3 },
        params: {},
      };
      const token = jwt.sign(payload, METABASE_SECRET_KEY);

      return METABASE_SITE_URL + "/embed/dashboard/" + token +
      "#bordered=true&titled=true";
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

module.exports = config;
