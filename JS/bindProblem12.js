
$( document ).ready(function() {

  console.log("bindproblem");

  var problemSelector=document.getElementById("PLForm");
  var problemSelector1extended=document.getElementById("body");
  var problemSelector1=document.getElementById("PL1Form");
  var problemSelector2=document.getElementById("cityname");
  problemSelector.addEventListener("keydown", myThirdFunction);
  problemSelector.addEventListener("click", myThirdFunction);
  problemSelector.addEventListener("mouseout", myThirdFunction);
  problemSelector1.addEventListener("mouseout", myThirdFunction);
  problemSelector1extended.addEventListener("mouseover", myThirdFunction);


  var blockAutofillIn=false;

    problemSelector1.addEventListener("keydown", stopAutofillIn);
  function myThirdFunction() {
  //  var problemSelectorIDbind=problemSelector.getAttribute("idBind");
  //  var problemSelectorIDbind=document.querySelector("options[value=problemSelectorValue]");
//console.log(problemSelector2.getAttribute("idbind")) ;
    //console.log(problemSelectorIDbind);
    if(blockAutofillIn==false){
      try{

        var problemSelectorValue=problemSelector.value;
        var text1 = document.querySelector('option[value="' + problemSelectorValue+ '"]').getAttribute("idbind");
        console.log(text1);
        problemSelector1.value=text1;
        console.log(problemSelectorValue);
        //document.getElementById("demo").innerHTML += problemSelectorValue;
      }catch(err){
        
      }

    }else return;

  }

function stopAutofillIn(){
  blockAutofillIn=true;

}
});
