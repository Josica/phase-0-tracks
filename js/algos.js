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


//Psuedocode Release 2
//Write a function that takes an integer for length
// and builds and returns an array of strings of the given length. 
// - Create a variable to hold random array 
// - Use nested loop to build array
// - Inner loop will take a random number to generate a word 
//	 with a minimum of 1 letter and a maximum of 10 letters.
// - Use Math.floor so all numbers have the same chance of being picked (rounded down)
// - Push random word into random word array
// - Return randomly generated word array 

function random_test_generator(num)
{
	var random_arr = [];
	for (var i = 0; i < num; i++)
	{
		var random = "";
		var alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];

		for (var j = 0; j <= Math.floor(Math.random() * 10); j++)
		{
			random += alphabet[Math.floor(Math.random() * 26)]
		}
		random_arr.push(random);
	}
	return random_arr;
}

// DriverCode
// console.log(longest_phrase(["apples", "mangos are cool", "star ships", "flowers"]));
// var check1 = {name: "Steven", age: 54}
// var check2 = {name: "Tamir", age: 54}
// console.log(share_check(check1, check2));
// console.log(random_test_generator(3));

for (var i = 0; i < 10; i++)
{
	var arr_length = 5; 
	var random_test_data = random_test_generator(arr_length);
	var longest = longest_phrase(random_test_data);
	console.log("Random Array: " + random_test_data + "\n");
	console.log("Longest phrase is " + longest + "." + "\n"); 
	console.log("\n"); 
}
