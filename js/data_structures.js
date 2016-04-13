var colors = ["blue", "pink", "turquoise", "red"];
var horse_Names = ["Charles", "Petunia", "Scout", "Mojo"];

colors.push("purple");
horse_Names.push("Ed");

console.log(colors)
console.log(horse_Names)

// create a new variable for the array
// loop through number of items in each group 
// pair them together. 

// for each index in the names array, take the name and 
//make it the key, and the matching color and make it the value

var color_Horses = [];

for (var i = 0; i < colors.length; i++) {
color_Horses[horse_Names[i]] = colors[i];
}

console.log(color_Horses)