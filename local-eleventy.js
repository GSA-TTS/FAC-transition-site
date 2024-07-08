const yaml = require('js-yaml');

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
  eleventyConfig.addDataExtension('yaml', (contents) => yaml.load(contents));
  eleventyConfig.addPassthroughCopy('assets');
  eleventyConfig.addPassthroughCopy('favicon.ico');
  eleventyConfig.addPassthroughCopy('robots.txt');

  eleventyConfig.addPlugin(pluginRss);
  eleventyConfig.addFilter('hashcode', (s) => hashCode(s));
  eleventyConfig.addFilter('markdown', (markdownString) =>
    md.render(markdownString)
  );

  eleventyConfig.addGlobalData("baseUrl", "http://localhost:8080");

  eleventyConfig.addFilter("absoluteUrl", function (url, base = eleventyConfig.globalData.baseUrl) {
    try {
      return new URL(url, base).href;
    } catch (err) {
      console.error(err);
      return url;
    }
  });

  return {
    markdownTemplateEngine: 'njk',
    dir: {
      input: 'src',
      includes: '_includes',
      data: '_data',
      output: '_site',
    },
  };
};
