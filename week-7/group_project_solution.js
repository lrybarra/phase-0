// As a user, I want a function called sum that gives me the sum of a collection of numbers

function sum(arr) {
    var tot = 0;
    for (i = 0; i < arr.length; i++)
        tot += arr[i];
    return tot
}
//test code next line
console.log(sum([5,7,8]));

// As a user, I want a function called mean that will give me the average value of a list of numbers

function mean(arr){
  var tot = 0;
  len = arr.length;
  for (i = 0; i < len; i++)
    tot += arr[i];
  return tot/len;
}

//test code next line
console.log(mean([90,100]))

// As a user, I want a function called median that will give me the "middle" of a list of sorted numbers

function median(array) {

    array.sort(function(a,b) {return a - b;} );

    half = Math.floor(array.length/2);

    if(array.length % 2 == 1)
        return array[half];
    else
        return (array[half-1] + array[half]) / 2.0;
}

//test code next line
console.log(median([1,3,4,5,6,7,9]));
console.log(median([1,4,16,20]));