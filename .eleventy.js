const yaml = require('js-yaml');
const markdownIt = require("markdown-it");
const eleventyNavigationPlugin = require("@11ty/eleventy-navigation");

const pluginRss = require('@11ty/eleventy-plugin-rss');
const md = require('markdown-it')({
  html: false,
  breaks: true,
  linkify: true,
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
  eleventyConfig.addFilter("limit", function(array, limit) {
    return array.slice(0, limit);
  });
  // Remove the first character from a string
  // Usage: {{ string | remove_leading_char }}
  // Ex. "/href/" -> "href/"
  eleventyConfig.addFilter("remove_leading_char", function(contents) {
    return contents.slice(1, contents.length);
  });

  const md = new markdownIt({
    html: true,
  });
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
