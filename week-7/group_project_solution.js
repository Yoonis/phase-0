function sum(array){
  return array.reduce(function(sum, x) { 
    return sum + x; 
  });
};
// As a user, I want to know the total of all my numbers.


function mean(array){
  return (sum(array)/(array.length));
};
// As a user, I want to know the average of a group of numbers.


function median(array){
  array.sort(function(a, b){return a-b});
  var midIndex = array.length / 2;
  if (array.length % 2 === 0){
    return (array[midIndex] + array[(midIndex - 1)])/2;
  } else {
    return array[Math.floor(midIndex)];
  }
};

//As a user, I want to know the number that is exactly halfway in my dataset.
