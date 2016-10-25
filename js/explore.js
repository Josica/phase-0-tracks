// Psuedocode

// Create a function that that takes a 
// string as a parameter and reverses the string. 
// Set a variable for the output (the reversed string)
// Create a loop to put each letter in the given 
// string in reversed order in the output string 
// and then return the output string that is reversed. 

function reverse_string(str) {
var reversed_str = "";

for (var i = 0; i < str.length; i++) {
	reversed_str = str[i] + reversed_str;
}

return reversed_str;

}

// Driver Code 

if (1 == 1) {
	console.log(reverse_string("hello"));
} 