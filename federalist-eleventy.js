const yaml = require('js-yaml');

module.exports = function (eleventyConfig) {
  eleventyConfig.addDataExtension('yaml', (contents) => yaml.load(contents));

  eleventyConfig.addPassthroughCopy('assets/img');
  
  return {
    pathPrefix: "site/gsa-tts/fac-transition-site",
    dir: {
      input: 'src',
      includes: '_includes',
      data: '_data',
      output: '_site',
    },
  };
};
