// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var bruno = "bark";


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
/*
console.log("#");
console.log("##");
console.log("###");
console.log("####");
console.log("#####");
console.log("######");
console.log("#######");
*/

var my_str = "#";
for(var i=0; i<7; i++) {
	console.log(my_str);
	my_str += "#";
}

// FizzBuzz	

for(var num=1; num<101; num++) {
	if (num % 3 == 0 && num % 5 == 0)
		console.log("FizzBuzz");
	else if (num % 3 == 0)
		console.log("Fizz");
	else if (num % 5 == 0)
		console.log("Buzz");
	else
		console.log(num);
}

// Chess Board

var size = 8;
var board = "";

for(var j=1; j<=size; j++) {
	if (j % 2 != 0)
		board += " ";
	for(var i=1; i<=size; i++) {
	  if (i % 2 == 0)
	  	board += "#";
	  else
	  	board += " ";
	  if (i == size)
	  	board += "\n";
	}
}

console.log(board);

// Functions

// Complete the `minimum` exercise.

function min(arg1, arg2) {
	var min;
	arg1 > arg2 ? min = arg2 : min = arg1;
	return min;
}

console.log(min(1000, 3));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Albert E. Gator",
	favoriteFoods: ["Seminoles", "Volunteers", "Wildcats"],
	quirk: true
};



/*

Did you learn anything new about JavaScript or programming in general?

> Yes, I learned that it was introduced in 1995, is also known as ECMAScript, and that the Node.js 
  project provides a powerful environment for programming JavaScript outside of a browser.

Are there any concepts you feel uncomfortable with?

> No

Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.

> Similarities - numbers are written the same; string concatenation is done with + operator.

  Differeneces - nil in Ruby - null or undefined in JavaScript; JavaScript does type coercion and Ruby does not

What is an expression?

> A fragment of code that produces a value.

What is the purpose of semicolons in JavaScript? Are they always required?

> To end an expression. No.

What causes a variable to return undefined?

> When it is empty.

Write your own variable and do something to it in the eloquent.js file.

> See above.

What does console.log do and when would you use it? What Ruby method(s) is this similar to?

> Prints to the text-displaying output. Similar to puts, print, and p in Ruby.

Write a short program that asks for a user to input their favorite food. After they hit return, have the
program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome 
console (Links to an external site.) rather than node since node does not support prompt or alert). Paste 
your program into the eloquent.js file.

// code below

 window.prompt("Enter your favorite food!");
 window.alert("Hey! That's my favorite too!");


Describe while and for loops

> while loops execute the code within the curly braces as long as a condition inside parentheses that follow
  the while statement evaluates to true. For loops are an application of a common type of while loop that
  allows you to set a counter

What other similarities or differences between Ruby and JavaScript did you notice in this section?

> Ruby does not require semicolons to end an expression.
  Ruby does not require you to declare variables with "var"
  switch / case statements are written differently
  Parentheses required for loops
  Loops do not end with "end" keyword
  Variable names have similar constraints for Ruby and JavaScript
  Infinite loops possible in Ruby and JavaScript

Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js 
file.

> See above.

What are the differences between local and global variables in JavaScript?

> Local variables are created by their function and their scope is limited to the function that called
  them whereas global variables are accessible throughout the program. If you try to access a local variable outside of its function you will receive an error. 

When should you use functions?

> One should utilize functions when a section of code can or will be used many times, possibly with
  different constraints each time. It is an amazing way to encapsulate "functionality".

What is a function declaration?

> A set of expressions that name the function and outline what arguments it will accept (if any). Within
  the body of the the function its various statements say what it does. Some functions have side effects,
  some return a value, and some do both.

Complete the minimum exercise in the eloquent.js file.

> Okay. See above.

What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs 
array["max"]?

> array.max fetches the property named max, array["max"] evaluates the expression "max" and uses result as
  property name

Create an object called me that stores your name, age, three favorite foods, and a quirk in your
 eloquent.js file.

> See above.

What is a JavaScript object with a name and value property similar to in Ruby?

> Hash.

What are the biggest similarities and differences between JavaScript and Ruby?

> Ruby does not require semicolons to end an expression.
  Ruby does not require you to declare variables with "var"
  switch / case statements are written differently
  Parentheses required for loops
  Loops do not end with "end" keyword
  Variable names have similar constraints for Ruby and JavaScript
  Infinite loops possible in Ruby and JavaScript

Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?

> Sure, hash syntax. 

How do you feel about diving into JavaScript after reading these chapters?

> Looking forward to it!

*/


