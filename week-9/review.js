/* Numbers to English Words


# I worked on this challenge by myself
# This challenge took me [#] hours.

# Pseudocode
# Initial Solution
*/ 

var in_words = function(num) {
  var num_word = ""
  arr = num.toString().split("");
  //console.log(arr)
  for (var i = 0; i < arr.length; i++) {
    switch (arr[i]) {
      case "0":
      	if (num_word == "") {
          return "zero";
        }
        break;
      case "1":
      	if (arr.length == 3) {
      	  return "one hundred";
        }
      	else if (arr.length == 2) {
      	  switch (arr[1]) {
      	    case "0":
      	      return "ten"
      	    case "1":
      	      if (num_word == "") {
      	       return "eleven";
              }
      	      else {
      	      	num_word = num_word.concat("one");
              }
              break;
      	    case "2":
      	      if (num_word == "") {
      	        return "twelve";
              }
              break;
      	    case "3":
      	      if (num_word == "") {
      	      	return "thirteen";
              }
              break;
      	    case "4":
      	      if (num_word == "") {
      	      	return "fourteen";
              }
              break;
      	    case "5":
      	      if (num_word == "") {
      	      	return "fifteen";
              }
      	    case "6":
      	      if (num_word == "") {
      	      	return "sixteen";
              }
              break;
      	    case "7":
      	      if (num_word == "") {
      	      	return "seventeen";
              }
      	      break;
      	    case "8":
      	      if (num_word == "") {
      	      	return "eighteen"
              }
      	      break;
      	    case "9":
      	      if (num_word == "") {
      	      	return "nineteen";
              }
      	      break;
            default:
              break;
            }
      	  } 
      	else {
      	  return "one";
        }
      case "2":
        arr.length > 1 ? (num_word == "" ? num_word = num_word.concat("twenty ") : num_word = num_word.concat("two")) :  num_word = num_word.concat("two");
        break;
      case "3":
        arr.length > 1 ? (num_word == "" ? num_word = num_word.concat("thirty ") : num_word = num_word.concat("three")) : num_word = num_word = num_word.concat("three");
        break;
      case "4":
        arr.length > 1 ? (num_word == "" ? num_word = num_word.concat("fourty ") : num_word = num_word.concat("four")) : num_word = num_word.concat("four");
        break;
      case "5":
      	arr.length > 1 ? (num_word == "" ? num_word = num_word.concat("fifty ") : num_word = num_word.concat("five")) : num_word = num_word.concat("five");
        break;
      case "6":
      	arr.length > 1 ? (num_word == "" ? num_word = num_word.concat("sixty ") : num_word = num_word.concat("six")) : num_word = num_word.concat("six");
        break;
      case "7":
      	arr.length > 1 ? (num_word == "" ? num_word = num_word.concat("seventy ") : num_word = num_word.concat("seven")) : num_word = num_word.concat("seven");
        break;
      case "8":
      	arr.length > 1 ? (num_word == "" ? num_word = num_word.concat("eighty ") : num_word = num_word.concat("eight")) : num_word = num_word.concat("eight");
        break;
      case "9":
      	arr.length > 1 ? (num_word == "" ? num_word = num_word.concat("ninety ") : num_word = num_word.concat("nine")) : num_word = num_word.concat("nine");
        break;
      default:
        break;
    }
  }
  //console.log(num_word);
  return num_word;
  
}

console.log(in_words(0));
console.log(in_words(11));
console.log(in_words(22));
console.log(in_words(33));
console.log(in_words(46));
console.log(in_words(59));
console.log(in_words(98));
console.log(in_words(84));
console.log(in_words(100));
console.log(in_words(1));
console.log(in_words(19));

/* 

What concepts did you solidify in working on this challenge? 

> Writing functions, case statements, for loops, flow control, placing brackets, code porting

What was the most difficult part of this challenge?

> Finding corresponding JavaScript functions for Ruby counterparts

Did you solve the problem in a new way this time?

> Nopers.

Was your pseudocode different from the Ruby version? What was the same and what was different?

> No because the logic is exactly the same.

*/

/*
quit = false

until quit
  print "Enter a number from 0 to 100 (q to quit) :> "
  num = gets.chomp()
  if (num.to_s == 'q')
  	quit = true
  else
  	puts in_words(num.to_i)
  end
end

*/
