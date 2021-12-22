
$( document ).ready(function() {

  //console.log("bindproblem");

  var problemSelector=document.getElementById("PLForm");
  var problemSelector1extended=document.getElementById("body");
  var problemSelector1=document.getElementById("PL1Form");
  var problemSelector2=document.getElementById("PL2Form");
  problemSelector.addEventListener("keydown", functionAutoFillIn);
  problemSelector.addEventListener("click", functionAutoFillIn);
  problemSelector.addEventListener("mouseout", functionAutoFillIn);
  problemSelector1.addEventListener("mouseout", functionAutoFillIn);
  problemSelector1extended.addEventListener("mouseover", functionAutoFillIn);


  var blockAutofillIn=false;

    problemSelector1.addEventListener("keyup", stopAutofillIn);
        problemSelector2.addEventListener("keyup", stopAutofillIn);
  function functionAutoFillIn() {
  //  var problemSelectorIDbind=problemSelector.getAttribute("idBind");
  //  var problemSelectorIDbind=document.querySelector("options[value=problemSelectorValue]");
//console.log(problemSelector2.getAttribute("idbind")) ;
    //console.log(problemSelectorIDbind);
    if(blockAutofillIn==false){
      try{

        var problemSelectorValue=problemSelector.value;
        var text1 = document.querySelector('option[value="' + problemSelectorValue+ '"]').getAttribute("idbind");
          var text2 = document.querySelector('option[value="' + problemSelectorValue+ '"]').getAttribute("idbindA");
        //console.log(text2);
        problemSelector1.value=text1;
        problemSelector2.value=text2;
        //console.log(problemSelectorValue);
        //document.getElementById("demo").innerHTML += problemSelectorValue;
      }catch(err){

      }

    }else return;

  }

function stopAutofillIn(){
  //console.log("lector "+problemSelector1.value);
if(problemSelector1.value==0){
  //console.log("problemselector==0");
  blockAutofillIn=false;
  return;
}else{
        blockAutofillIn=true;
}





}
});
