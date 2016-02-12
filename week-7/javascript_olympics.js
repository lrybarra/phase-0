 // JavaScript Olympics
// I paired with Collette Pitamba on this challenge.
// This challenge took me 2 hours.

// Warm Up
// Bulk Up

function athletes(ath_array) {
  for (var i in ath_array) {
    ath_array[i].win =  ath_array[i].name + ' won ' + ath_array[i].event;
    console.log(ath_array[i].win)
   };
};

var athletesObj = [
  {
    name:'Holly Holmes',
    event: 'UFC 193'
  },
  {
    name:'Mike Tyson',
    event: 'every match'
  },
  {
    name:'Michael Phelps',
    event: 'swimming'
  },
  {
    name:'Usain Bolt',
    event: '100 meter dash'
  }
];

athletes(athletesObj);

// Jumble your words

function reverse_string(my_string) {
  var result = my_string.split("").reverse().join("");
  console.log(result);
}; 

reverse_string("JavaScript");

// 2,4,6,8

function numbers(num) {
  var even = [];
  
  for(var i in num) {
   if ( i % 2 == 0 ) {
     even.push(i);
    console.log(even);
   } 
  }
}

numbers([8,3,5,2,8,3,6,2,6]);

// "We built this city"

function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?

> Iterating over an array, creating functions, creating constructors, creating objects

What are constructor functions?

> Functions that are similar to classes, they allow one to create objects based on the code in the constructor.

How are constructors different from Ruby classes (in your research)?

> JavaScript constructors use this notation
*/






