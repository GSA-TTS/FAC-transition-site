/* CONSTANTS */
const baseUrl = process.env.BASEURL;

/* BASE */
const federalistConfig = require("./eleventy-base.js");
module.exports = federalistConfig(baseUrl);