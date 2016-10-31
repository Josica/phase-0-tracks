// Psuedocode Release 0 
// Create a function that takes an array of words 
// or phrases and returns the longest word or phrase
// - Create a longest variable to store
//   the longest phrase to return
// - Add for loop to loop through the phrase array at each element 
// - Declare a current word / phrase variable as the ith element of the phrase array
// - if the longest is equal to null then set it equal to the current phrase 
// - else if the longest phrase so far is less than the current phrase 
//   set the current phrase as the longest phrase 
// - then return the longest phrase

function longest_phrase(phrase)
{
	var longest = "";
	for (var i = 0; i < phrase.length; i++) 
	{
		var current = phrase[i];
		if (longest == "")
		{
			longest = current;
		}
		else if (longest.length < current.length)
		{
			longest = current
		}
	}

	return longest;
}


// Psuedocode Release 1
// Create a function that takes two objects and checks to 
// see if the objects share at least one key-value pair.
// Create a loop to check if the keys are equal or not and return a bool. 

function share_check(obj1, obj2)
{
	var bool = false; 
	for (var key in obj1)
	{
		if (obj1[key] === obj2[key]) 
		{
			bool = true; 
		}
	}
	return bool; 
}



// DriverCode
// console.log(longest_phrase(["apples", "mangos are cool", "star ships", "flowers"]));
var check1 = {name: "Steven", age: 54}
var check2 = {name: "Tamir", age: 54}
console.log(share_check(check1, check2));
