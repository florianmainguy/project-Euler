/* Largest prime number of 600851475143 */

var number = 600851475143;
var div=0;
var i=2;

while(!div) {
    if (number%i === 0) {        
        number = number/i;
        i=1;
    }
    i++;
    if (number === i) {
        div = 1;
    }
}

console.log("Result: " + number);