window.onload = function() {

    // footer newsletter signup
    var newsletterButton = document.getElementById("mc-embedded-subscribe-newsletter")

    newsletterButton.onclick = function (event) {

      event.preventDefault()

      var inputValue = document.getElementById("mce-EMAIL").value
      var errElm = document.getElementById("mce-error-response-newsletter");
      var succElm = document.getElementById("mce-success-response-newsletter");
      if (!inputValue || inputValue.length < 0 || !inputValue.includes("@")) {
        if(succElm) {
          succElm.setAttribute("style", "display:none;");
        }
        if(errElm) {
          errElm.setAttribute("style", "display:block;");
        }
        return;
      } else {
        analytics.identify(analytics.user().anonymousId(), {email: inputValue, storj_newsletter: true}, {}, function() {
          analytics.track("storj_newsletter", {});
          if(errElm) {
            errElm.setAttribute("style", "display:none;");
          }
          if(succElm) {
            succElm.setAttribute("style", "display:block;");
          }
        });
      }
    }
}
