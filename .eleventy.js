const yaml = require('js-yaml');

const pluginRss = require("@11ty/eleventy-plugin-rss");

hashCode = function(s) {
  var hash = 0,
    i, chr;
  if (s.length === 0) return hash;
  for (i = 0; i < s.length; i++) {
    chr = s.charCodeAt(i);
    hash = ((hash << 5) - hash) + chr;
    hash |= 0;
  }
  return hash;
};

module.exports = function (eleventyConfig) {
  eleventyConfig.addDataExtension('yaml', (contents) => yaml.load(contents));
  eleventyConfig.addPassthroughCopy('assets/img');
  eleventyConfig.addPassthroughCopy('favicon.ico');
  eleventyConfig.addPlugin(pluginRss);
  eleventyConfig.addFilter("hashcode", function(s) {
    return hashcode(s);
  });

  return {
    markdownTemplateEngine: "njk",
    dir: {
      input: 'src',
      includes: '_includes',
      data: '_data',
      output: '_site',
    },
  };
};
