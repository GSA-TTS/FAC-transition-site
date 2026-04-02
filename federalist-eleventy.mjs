/* CONSTANTS */
const baseUrl = process.env.BASEURL;

/* BASE */
import federalistConfig from "./eleventy-base.mjs";
export default federalistConfig(baseUrl);
