var list = ["fishes", "sam", "pizza", "washington"];
// console.log(list.length);

// count letters in each word and store into an array
var numbers =[];
for (var i = 0; i < list.length; i++) {
	numbers.push(list[i].length);
}
console.log(numbers);

//////////////////////////////////////////////////////
// if 1st is bigger than 2nd then delete 2nd. 
var second_Arr = [];
var third_Arr = [];

for (var i = 0; i < numbers.length; i++) {
	var x = numbers[i];
	var y = numbers[i+=1];
	console.log(x,y);

	if (x > y) {
		second_Arr.push(x);
	} else if (x < y) {
		second_Arr.push(y);
	} else {
		second_Arr.push(x);
	}
}
//////////////////////////////////////////////////////
for (var i = 0; i < second_Arr.length; i++) {
	var x = second_Arr[i];
	var y = second_Arr[i+=1];
	console.log(x,y);

	if (x > y) {
		third_Arr.push(x);
	} else if (x <= y) {
		third_Arr.push(y);
	} else {
		third_Arr.push(x, y);
	}
}
//////////////////////////////////////////////////////
console.log(third_Arr)

var longest = (list[numbers.indexOf(third_Arr[0])])

// print 
console.log("The longest word is: " + longest + ".");

