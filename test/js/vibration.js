$(function() {
  $("body").onload = test();
})

function test() {
  console.log("testing");
  window.navigator.vibrate(2000); // vibrate for 200ms
  //window.navigator.vibrate([100,30,100,30,100,200,200,30,200,30,200,200,100,30,100,30,100]); // Vibrate 'SOS' in Morse.
}
