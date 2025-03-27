const markdownItAnchor = require('markdown-it-anchor')
const markdownIt = require("markdown-it");
const slugify = require('@sindresorhus/slugify')
const yaml = require('js-yaml');

const eleventyNavigationPlugin = require("@11ty/eleventy-navigation");
const pluginRss = require('@11ty/eleventy-plugin-rss');

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

module.exports = function (eleventyConfig) {
  eleventyConfig.addDataExtension("yaml", (contents) => yaml.load(contents));

  eleventyConfig.addPassthroughCopy("assets");
  eleventyConfig.addPassthroughCopy("favicon.ico");
  eleventyConfig.addPassthroughCopy("robots.txt");

  eleventyConfig.addPlugin(pluginRss);
  eleventyConfig.addPlugin(eleventyNavigationPlugin);

  eleventyConfig.addFilter("hashcode", (s) => hashCode(s));
  eleventyConfig.addFilter("markdown", (markdownString) =>
    md.render(markdownString)
  );
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

  // Sort an array by path name. Used to ensure collections are sorted by 01, 02, ... Rather than by creation date.
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

  eleventyConfig.addFilter("debugger", (...args) => {
    console.log(...args)
    debugger;
  })

  const md = new markdownIt({
    html: true,
  }).use(markdownItAnchor, {
    slugify: s => slugify(s),
  });
  eleventyConfig.setLibrary('md', md);
  
  eleventyConfig.addPairedShortcode("markdown", (content) => {
    return md.render(content);
  });

  return {
    markdownTemplateEngine: "njk",
    dir: {
      input: "src",
      includes: "_includes",
      data: "_data",
      output: "_site",
    },
  };
};
