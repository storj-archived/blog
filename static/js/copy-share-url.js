window.onload = function() {
    var url = window.location.href,
        shareBtn = document.getElementById("shareBtn"),
        dummy = document.createElement('input');

    if(shareBtn) {
        shareBtn.onclick = function(event) {
            event.preventDefault();

            document.body.appendChild(dummy);
            dummy.value = url;
            dummy.select();
            document.execCommand('copy');
            document.body.removeChild(dummy);
        }
    }
}
