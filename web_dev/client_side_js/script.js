console.log("The script is running! ");
// Practice from Video:
// var photo = document.getElementById("puppy");
// photo.style.border = "3px solid green";

function addFontColor (event) {
	var photo = document.getElementById("tex");
	photo.style.color = "pink";
	photo.style.fontSize = "50px"
}

var photo = document.getElementById("tex");
photo.addEventListener("click", addFontColor);


function addHeaderColor (event) {
	event.target.style.color = "pink";
	// photo.style.fontSize = "50px"
}

var photo = document.getElementById("main");
photo.addEventListener("click", addHeaderColor);