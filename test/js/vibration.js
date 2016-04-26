$(function() {
  $("body").onload = test();
})

function test() {
  console.log("testing");
  setInterval(vibrate, 10000);
}

function vibrate(millis) {
  var secs = millis | 5000;
  console.log(secs);
  window.navigator.vibrate(secs); // vibrate for 200ms
  //window.navigator.vibrate([100,30,100,30,100,200,200,30,200,30,200,200,100,30,100,30,100]); // Vibrate 'SOS' in Morse.
}
