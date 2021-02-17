const madLib = (verb, adj, noun) => {
  console.log(
    `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`
  );
};

madLib("make", "best", "guac");

// function madLib(verb, adj, noun) {
//   console.log(
//     `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`
//   );
// }

const isSubstring = (searchString, subString) => {
  return searchString.includes(subString);
};

console.log(isSubstring("time to program", "time"));

const fizzBuzz = (array) => {
  let arr = [];
  array.forEach((el) => {
    if ((el % 3 === 0 && el % 5 !== 0) || (el % 5 === 0 && el % 3 !== 0)) {
      arr.push(el);
    }
  });
  return arr;
};

console.log(fizzBuzz([3, 5, 7, 8, 9, 11, 15]));

const isPrime = (number) => {
  if (number < 2) return false;

  for (let i = 2; i < number; i++) {
    if (number % i === 0) return false;
  }
  return true;
};

console.log(isPrime(21));

const sumOfNPrimes = (n) => {
  let sum = 0;
  let count = 0;
  for (let i = 2; count < n; i++) {
    if (isPrime(i)) {
      count++;
      sum += i;
    }
  }
  return sum;
};

console.log(sumOfNPrimes(3));
