

function eliminar(){

  var user=getCookie("username");
  document.cookie = "username=user; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
  location.reload();
}

function logeate(){
  window.location="http://localhost:3000/login/index";

}
