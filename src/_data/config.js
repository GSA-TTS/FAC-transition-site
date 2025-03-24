const apiDataGovKey = "TEST_KEY";
const baseUrl = process.env.BASEURL;

exports.apiDataGovKey = apiDataGovKey;
exports.baseUrl = typeof baseUrl !== 'undefined' ? baseUrl + '/' : '/';
