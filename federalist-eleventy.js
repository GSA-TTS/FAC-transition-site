const yaml = require('js-yaml');
const baseUrl = process.env.BASEURL;

module.exports = function (eleventyConfig) {
  eleventyConfig.addPlugin(require('.eleventy.js'));

  // eleventyConfig.addDataExtension('yaml', (contents) => yaml.load(contents));

  // eleventyConfig.addPassthroughCopy('assets/img');
  // eleventyConfig.addPassthroughCopy('robots.txt');


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
