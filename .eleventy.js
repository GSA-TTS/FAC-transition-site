const yaml = require('js-yaml');
const { DateTime } = require('luxon');

const pluginRss = require("@11ty/eleventy-plugin-rss");
const md = require("markdown-it")({
  html: false,
  breaks: true,
  linkify: true,
});

const hashCode = function(s) {
  var hash = 0,
    i, chr;
  if (s.length === 0) return hash;
  for (i = 0; i < s.length; i++) {
    chr = s.charCodeAt(i);
    hash = ((hash << 5) - hash) + chr;
    hash |= 0;
  }
  return ((hash) >>> 0).toString(16);
};

const getUnexpiredPosts = function(items) {
  return items.filter(i => {
    const expirationDays = i.data.days_until_expiration;
    const date = i.data.date;
    const today = DateTime.now();

    if (!expirationDays) return true;

    const expirationDate = DateTime.fromJSDate(new Date(date)).plus({ days: expirationDays }).toJSDate();
    const isExpired = expirationDate < today;

    return !isExpired;
  })
}

module.exports = function(eleventyConfig) {
  eleventyConfig.addDataExtension('yaml', (contents) => yaml.load(contents));
  eleventyConfig.addPassthroughCopy('assets/img');
  eleventyConfig.addPassthroughCopy('assets/compliance');
  eleventyConfig.addPassthroughCopy('assets/workbooks');
  eleventyConfig.addPassthroughCopy('favicon.ico');
  eleventyConfig.addPassthroughCopy('robots.txt');

  eleventyConfig.addPlugin(pluginRss);
  eleventyConfig.addFilter("hashcode", (s) => hashCode(s));
  eleventyConfig.addFilter("markdown", (markdownString) =>
    md.render(markdownString)
  );
  eleventyConfig.addFilter("unexpiredPosts", function(pages) {
    return getUnexpiredPosts(pages);
  })

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
