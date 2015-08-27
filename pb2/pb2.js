/* Sum of even-valued terms of Fibonacci Sequence whose terms do not exceed 4 million*/

var fibonacciSeq = [1, 2];
var sumEven = 2;

for (i=2;fibonacciSeq[i-1]<4000000;i++) {
    fibonacciSeq.push(fibonacciSeq[i-2]+fibonacciSeq[i-1]);
    if (fibonacciSeq[i]%2 === 0) {
        sumEven += fibonacciSeq[i];
    }
}

console.log("Result: " + sumEven);