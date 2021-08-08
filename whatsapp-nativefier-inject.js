
function recheck () {
    navigator.serviceWorker.getRegistrations().then((registrations) => {
        for(registration of registrations){
             registration.unregister();
        }
        if (document.querySelector("body[class='page-version']")) {
            console.log("reload");
            document.location.reload();
         }
    });
    setTimeout(recheck, 5000); // callback
}
recheck();
