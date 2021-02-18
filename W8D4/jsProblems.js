const titleize = (array, callback) => {
  const arrMap = array.map((el) => {
    return `Mx. ${el} Jingleheimer Schmidt`;
  });
  callback(arrMap);
};

titleize(["Mary", "Brian", "Leo"], (arr) => {
  arr.forEach((element) => {
    console.log(element);
  });
});

function Elephant(name, height, ...arrayTricks) {
  this.name = name;
  this.height = height;
  this.arrayTricks = arrayTricks;
}

Elephant.prototype.trumpet = function () {
  return `${this.name} goes 'phrRRRRRRRRRRR!!!!!!!'`;
};

Elephant.prototype.grow = function () {
  this.height += 12;
};

Elephant.prototype.addTrick = function (trick) {
  arrayTricks.push(trick);
};

Elephant.prototype.play = function () {
  console.log(`${this.name} is ${this.arrayTricks[1]}`);
};

let lakhte = new Elephant("Lakhte", 12, "programming", "eating food");

console.log(lakhte.height);
console.log(lakhte.name);
console.log(lakhte.play());
