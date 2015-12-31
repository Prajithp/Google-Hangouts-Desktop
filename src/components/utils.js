var URL = require('url');

module.exports = {
  skipHangoutsRedirect: function(url) {
    var parsed = URL.parse(url, true);
    var hostMatches = parsed.hostname.indexOf('hangouts.google.com') > -1 || parsed.hostname.indexOf('github.com') > -1;;

    if (hostMatches && parsed.query.u) {
      url = decodeURIComponent(parsed.query.u);
    }

    return url;
  }
};
