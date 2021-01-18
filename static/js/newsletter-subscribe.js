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
          succElm.classList.add("d-none");
          succElm.classList.remove("d-block");
        }
        if(errElm) {
          errElm.classList.add("d-block");
          errElm.classList.remove("d-none");
        }
        return;
      } else {
        analytics.identify(analytics.user().anonymousId(), {email: inputValue, storj_newsletter: true}, {}, function() {
          analytics.track("storj_newsletter", {});
          if(errElm) {
            errElm.classList.add("d-none");
            errElm.classList.remove("d-block");
          }
          if(succElm) {
            succElm.classList.add("d-block");
            succElm.classList.remove("d-none");
          }
        });
      }
    }
}
