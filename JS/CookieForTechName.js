$( document ).ready(function() {

getTechNamerRefresh();


var TechnikerElement=document.getElementById("TechnikerID");


TechnikerElement.addEventListener("click", getTechName);
TechnikerElement.addEventListener("keydown", getTechName);


function getTechName(){
  var TechnikerValue=document.getElementById("TechnikerID").value;
  console.log("eventTech");
  console.log(TechnikerValue);
setCookie("techniker",TechnikerValue,700);
console.log(document.cookie);
document.getElementById("TechnikerID").value=getCookie("techniker");
}

function getTechNamerRefresh(){
  if(getCookie("techniker")==""){
        return;


  }else {
    document.getElementById("TechnikerID").value=getCookie("techniker");

  }

}



function setCookie(cname, cvalue, exdays) {
  const d = new Date();
  d.setTime(d.getTime() + (exdays*24*60*60*1000));
  let expires = "expires="+ d.toUTCString();
  document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
  let name = cname + "=";
  let ca = document.cookie.split(';');
  for(let i = 0; i < ca.length; i++) {
    let c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
}


})
