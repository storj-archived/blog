window.onload = function() {
    var url = window.location.href,
        shareBtn = document.getElementById('shareBtn'),
        dummy = document.createElement('input'),
        copyMsg = document.getElementById('copy-msg');

    if(shareBtn) {
        shareBtn.onclick = function(event) {
            event.preventDefault();
            // creates input, sets value to page url
            // selects its contenets and executes copy
            document.body.appendChild(dummy);
            dummy.value = url;
            dummy.select();
            document.execCommand('copy');

            // show url copied success message
            copyMsg.classList.add('d-block')
            document.body.removeChild(dummy);
        }
    }
}
