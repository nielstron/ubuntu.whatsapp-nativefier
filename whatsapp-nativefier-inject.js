
// unregister serviceworker after startup -> don't interfere at next startup
let deleteFun = function(){
  if("serviceWorker" in navigator){
    navigator.serviceWorker.getRegistrations().then(function(e){
     //console.log(e);
     for(r of e){
       r.unregister();
     }
   });
    //try{
    //  navigator.serviceWorker.ready.then(function(reg){
    //      reg.unregister();
    //  }).catch(function(error){
    //      console.log(error);
    //   });
    //} catch(e) {
    //    console.log(e);
    //}
  }};
deleteFun();
setInterval(deleteFun,1000);
