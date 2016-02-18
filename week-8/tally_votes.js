// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Colette Pitamba
//                                  Luis Ybarra
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.

// Voter "object" -- Inside voter object we have properties: pres, vp, sec, treas. The values of these properties are "Bob", "Devin", etc.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},  // "Bob": null // : 1 // : ++ 
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

/*
Loop through votes object; assign value of president 
property to VoteCouont property of president.
*/

// __________________________________________
// Initial Solution
var i = 0;
for(var obj in votes){
  if (voteCount.president[votes[obj].president] == null){
    voteCount.president[votes[obj].president] = 1;
  }
  else {
    voteCount.president[votes[obj].president] += 1;
  }
  if (voteCount.vicePresident[votes[obj].vicePresident] == null){
    voteCount.vicePresident[votes[obj].vicePresident] = 1;
  }
  else {
    voteCount.vicePresident[votes[obj].vicePresident] += 1;
  }
  if (voteCount.secretary[votes[obj].secretary] == null){
    voteCount.secretary[votes[obj].secretary] = 1;
  }
  else {
    voteCount.secretary[votes[obj].secretary] += 1;
  }
  if (voteCount.treasurer[votes[obj].treasurer] == null){
    voteCount.treasurer[votes[obj].treasurer] = 1;
  }
  else {
    voteCount.treasurer[votes[obj].treasurer] += 1;
  }
}

var pres = 0;
var vp = 0;
var sec = 0;
var tre = 0;
// officers.president = 
for(var obj in voteCount) {
  for(var name in voteCount[obj]) {
    if (obj == "president") {
      if (voteCount[obj][name] > pres) {
        pres = voteCount[obj][name];
        officers.president = name;
      }
    }
    if (obj == "vicePresident") {
      if (voteCount[obj][name] > vp) {
        vp = voteCount[obj][name];
        officers.vicePresident = name;
      }
    }
    if (obj == "secretary") {
        if (voteCount[obj][name] > sec) {
        sec = voteCount[obj][name];
        officers.secretary = name;
      }
    }
    if (obj == "treasurer")
      if (voteCount[obj][name] > tre) {
        tre = voteCount[obj][name];
        officers.treasurer = name;
      }
     //console.log(voteCount[prop][name]);
   }

    // console.log(voteCount[prop][name]);
  // console.log(prop);
  // console.log(name);
}

console.log(officers);
/*
console.log(voteCount.president["Louise"]);
console.log(voteCount.vicePresident["Hermann"]);
console.log(voteCount.secretary["Fred"]);
console.log(voteCount.treasurer["Ivy"]);
*/
// __________________________________________
// Refactored Solution






// __________________________________________
// Reflection






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)