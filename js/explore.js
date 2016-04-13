// create string variable
// define fuction reverse
// reverse variable 


function reverse(string) {
	var reverse_string = ''
	for (var i = string.length -1; i >= 0; i--) {
		reverse_string += string[i]; 
	}
	return reverse_string;
}
// print in console
var reverse_hello = (reverse("Hello"));


if (1 == 1) {
	console.log("Your result is " + reverse_hello +"!");
}
else {
	console.log("Sorry!");
}