

$( document ).on('turbolinks:load', function() {

  $('#checkLocation').click(getLocation);
})

function getLocation() {
  var x = document.getElementById("demo");

    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(checkPosition);
    } else {
      x.innerHTML = "Geolocation is not supported by this browser.";
    }
  }


function checkPosition(position) {

  if (position.coords.latitude > 48.3376 && position.coords.latitude < 48.3379
    && position.coords.longitude > 14.3197 && position.coords.longitude < 14.3200) {
    window.location = "/student_answers/new";
  } else {
    window.location = "/students/new";
  }
}
