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
console.log(reverse("Hello"));
