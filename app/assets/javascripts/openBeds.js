$(document).ready(function(){

})

toggleInfo = function(event) {

  if(event.className == "fa fa-arrow-circle-down") {
    event.className = "fa fa-arrow-circle-up";
    event.textContent = "Less Info";
  } else {
    event.className = "fa fa-arrow-circle-down";
    event.textContent = "More Info";
  }
}
