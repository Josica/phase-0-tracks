
function hideElephant(){
var elephant = document.getElementById("elephant");
elephant.style.visibility = "hidden";
}
var button = document.getElementById("click");
button.addEventListener("click", hideElephant);


