

$( document ).on('turbolinks:load', function() {

  $('#checkLocation').click(getLocation);
})




function getLocation() {
  var x = document.getElementById("demo");

    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(showPosition);
    } else {
      x.innerHTML = "Geolocation is not supported by this browser.";
    }
  }


function showPosition(position) {

  if (position.coords.latitude > 48 && position.coords.latitude < 49 && position.coords.longitude < 15 && position.coords.longitude > 14) {
    window.location = "/student_answers/new";
  } else {
    window.location = "/students/new";
  }

  /*$.ajax({
     url: "/pages",
     type: "POST",
     data: 'lat=' + position.coords.latitude,
     success: function() {
       console.log("success");
       if (position.coords.latitude >30 && position.coords.latitude < 31.5) {
         window.location = "/student_answers/new";
       } else {
         window.location = "/students/new";
       }


     },
     error: function() {
       console.log("error");
     }
   }); */
}
  /*alert("HALLO")*/
