/* CONSTANTS */
const baseUrl = process.env.BASEURL;

/* MODULES */
const yaml = require('js-yaml');
const md = require('markdown-it')({
  html: false,
  breaks: true,
  linkify: true,
});


/* FILTERS */
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
  //  eleventyConfig.addPlugin(require('/tmp/work/site_repo/local-eleventy.js'));

  eleventyConfig.addGlobalData("baseUrl", process.env.BASEURL);

  eleventyConfig.addPassthroughCopy('assets');
  eleventyConfig.addPassthroughCopy('favicon.ico');
  eleventyConfig.addPassthroughCopy('robots.txt');

  eleventyConfig.addDataExtension('yaml', (contents) => yaml.load(contents));

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
};
