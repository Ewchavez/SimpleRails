

function marcado(){

document.getElementById("formC").submit();
}






function mostrar(){
  var element = document.getElementsByTagName("label")
    for (i = 0; i< element.length; i++) {
      element[i].onmouseover=function(evt){
        console.log(evt.target)
      document.getElementById("nu1").value=evt.target.value;
       var a=evt.target
       console.log(a.id);
       var con=a.id;
       var valores= con.split(',');
      console.log(valores)
      var nombre = valores[0],     desc= valores[1], ida=valores[2];
      console.log(nombre)
      document.getElementById("nu1").value=nombre;
      document.getElementById("nu2").value=desc;
      document.getElementById("idV").value=ida;
      document.getElementById("idInter2").href="/proyecto/interesado?@idPro="+ida;
      }
    }
    return element;}

mostrar();

function envioP(id){
document.getElementById("nu2").value=id;
}


function evento(id){
  console.log(id);
  document.getElementById("ModModi").value=id;
}




// Get the modal
var modal1 = document.getElementById('myModal');
var modal2 = document.getElementById('myModal2');
var modal3 = document.getElementById('myModal3');
// Get the button that opens the modal
var btn1 = document.getElementById("myBtn");
var btn2 = document.getElementById("myBtn2");

// Get the <span> element that closes the modal


// When the user clicks on the button, open the modal




btn1.onclick = function() {
    modal1.style.display = "block";

}

function abrirmodel(){
  modal2.style.display = "block";
}
function abrirmodel3(){


  modal3.style.display = "block";
}



btn2.onclick = function() {

    modal2.style.display = "block";
}


// When the user clicks on <span> (x), close the modal
function  cerrarP() {
    modal1.style.display = "none";
    modal2.style.display = "none";
    modal3.style.display = "none";
}


// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal1) {
        modal1.style.display = "none";
    }
    if (event.target == modal2) {
        modal2.style.display = "none";
    }

    if (event.target == modal3) {
        modal3.style.display = "none";
    }
}
