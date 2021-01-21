window.onload = function() {

    // footer newsletter signup
    var newsletterButton = document.getElementById("mc-embedded-subscribe-newsletter")

    newsletterButton.onclick = function (event) {

        event.preventDefault();

        var inputValue = document.getElementById("mce-EMAIL").value.toLowerCase().trim();
        var errElm = document.getElementById("mce-error-response-newsletter");
        var succElm = document.getElementById("mce-success-response-newsletter");

        console.log("VALUE:", inputValue)

        if (!inputValue || !inputValue.includes("@")) {
            setDisplayAttribute(errElm, "d-block", "d-none");
            setDisplayAttribute(succElm, "d-none", "d-block");

            return;
        }

        analytics.identify(
            inputValue,
            { email: inputValue, storj_newsletter: true },
            {},
            function() {
                analytics.track("storj_newsletter", {});

                setDisplayAttribute(errElm, "d-none", "d-block");
                setDisplayAttribute(succElm, "d-block", "d-none");
            },
        );

        function setDisplayAttribute(element, classAdding, classRemoving) {
            if (element) {
                element.classList.add(classAdding);
                element.classList.remove(classRemoving);
            }
        }
    }
}
