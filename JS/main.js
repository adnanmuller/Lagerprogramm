console.log("hallo adi");

$(document).ready(function() {
  clockUpdate();
  setInterval(clockUpdate, 1000);
})

function clockUpdate() {
  var date = new Date();
  console.log(date);
  //$('.digital-clock').css({'color': '#fff', 'text-shadow': '0 0 6px #ff0'});
  function addZero(x) {
    if (x < 10) {
      return x = '0' + x;
    } else {
      return x;
    }
  }

  function twelveHour(x) {
    if (x > 12) {
      return x = x - 12;
    } else if (x == 0) {
      return x = 12;
    } else {
      return x;
    }
  }

  function AM_PM(x){
    if (x > 12) {
      return x = "PM";
    } else if (x == 0) {
      return x = "PM";
    } else {
      return "AM";
    }
  }


  var h = addZero(date.getHours());
  var m = addZero(date.getMinutes());
  var s = addZero(date.getSeconds());
  var ampm=addZero(AM_PM(date.getHours()));
  $('.digital-clock').text(h + ':' + m + ':' + s );
  //$('.digital-clock-ampm').text(ampm);
}
