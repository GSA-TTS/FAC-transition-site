/* CONSTANTS */
const baseUrl = "http://localhost:8080";

/* BASE */
const localConfig = require("./eleventy-base.js");
module.exports = localConfig(baseUrl);