const yaml = require('js-yaml');
const baseUrl = process.env.BASEURL;

module.exports = function (eleventyConfig) {
  eleventyConfig.addPlugin(require('/tmp/work/site_repo/.eleventy.js'));

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
