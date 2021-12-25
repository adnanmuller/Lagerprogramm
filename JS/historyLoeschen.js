//console.log("Hallo loeschen history");
var queryText="";
function createAlertBox(element){
var changeInputForm=document.getElementById('historyLoeschenInput');
//var queryText;
  if(element.className==="bg-danger"){
    element.className="";
      var inputValue2=element.getElementsByClassName('selectInput').item(0).value;
            console.log("queryText: "+queryText);
            console.log("value AAA is: "+inputValue2);

      //var inputSelector2=element.getElementsByClassName('selectInput').item(0);
       queryText=queryText.replace(inputValue2+","," ");

      changeInputForm.value=queryText.trim();
  }else{

      element.className="bg-danger";
      var inputValue1=element.getElementsByClassName('selectInput').item(0).value;
      console.log("value is: "+inputValue1);
       queryText+=inputValue1+",";
      changeInputForm.value=queryText.trim();

  }


//console.log("button pressed");
var tableRow=document.querySelectorAll("#tabelHistory tr");
//console.log(tableRow);
//alert("hallo");

//alert(deleteHistory);
//console.log(arrayDeleteHistory);

var getAlertBox=document.getElementById('AlertBox1');
//getAlertBox.innerHTML=arrayDeleteHistory;

  //console.log(selectedValues);
}




$( document ).ready(function() {

var buttonLoeschen=document.getElementById("submitLöschen");
var eachTableRow=document.getElementsByClassName("selectInput2");
  buttonLoeschen.addEventListener("click",createAlertBox );

































})
