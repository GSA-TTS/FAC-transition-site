const apiDataGovKey = "AGuVZDiVrItBRVCdtcGTIo4iaiwipPQZ3ymjkfOy";
const baseUrl = process.env.BASEURL;

exports.apiDataGovKey = apiDataGovKey;
exports.baseUrl = typeof baseUrl !== 'undefined' ? baseUrl + '/' : '/';
