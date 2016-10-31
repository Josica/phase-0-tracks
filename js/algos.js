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

// DriverCode
// console.log(longest_phrase(["apples", "mangos are cool", "star ships", "flowers"]));