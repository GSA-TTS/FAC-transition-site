const apiDataGovKey = "AGuVZDiVrItBRVCdtcGTIo4iaiwipPQZ3ymjkfOy"; // This is embedded here on purpose. It's a public key.
const baseUrl = process.env.BASEURL;

exports.apiDataGovKey = apiDataGovKey;
exports.baseUrl = typeof baseUrl !== "undefined" ? baseUrl + "/" : "/";
