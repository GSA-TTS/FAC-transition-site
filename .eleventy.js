const yaml = require('js-yaml');

module.exports = function (eleventyConfig) {
  eleventyConfig.addDataExtension('yaml', (contents) => yaml.load(contents));

  eleventyConfig.addPassthroughCopy('assets/img');
  eleventyConfig.addPassthroughCopy('favicon.ico');
  eleventyConfig.addPassthroughCopy('robots.txt');
  
  return {
    dir: {
      input: 'src',
      includes: '_includes',
      data: '_data',
      output: '_site',
    },
  };
};
