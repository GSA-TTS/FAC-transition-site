const yaml = require('js-yaml');
const baseUrl = process.env.BASEURL;

module.exports = function (eleventyConfig) {
  eleventyConfig.addPlugin(require('/tmp/work/site_repo/.eleventy.js'));

  // eleventyConfig.addDataExtension('yaml', (contents) => yaml.load(contents));

  // eleventyConfig.addPassthroughCopy('assets/img');
  // eleventyConfig.addPassthroughCopy('robots.txt');


  eleventyConfig.addGlobalData("baseUrl", process.env.BASEURL);

  eleventyConfig.addFilter("absoluteUrl", function (url, base = eleventyConfig.globalData.baseUrl) {
    try {
      return new URL(url, base).href;
    } catch (err) {
      console.error(err);
      return url;
    }
  });

  return {
    markdownTemplateEngine: "njk",
    pathPrefix: baseUrl,
    dir: {
      input: 'src',
      includes: '_includes',
      data: '_data',
      output: '_site',
    },
  };
};
