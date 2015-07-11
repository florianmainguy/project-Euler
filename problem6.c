/** PROBLEM 5 **/

/* The sum of the squares of the first ten natural nu;ber is:
   1(2) + 2(2) + ... + 10(2) = 385

   The square of the su; of the first ten natural number is:
   (1 + 2 + ... + 10)(2) = 3025

   Hence the difference between the sum of the squares of the first
   ten natural numbers and the square of the sum is 3025 - 385 = 2640.

   Find the difference between the sum of the squares of the first one hundred
   natural numbers and the square of the sum. */


#include <stdio.h>

int main() {

int sumSquares = 0;
int squareSum = 0;
int diff = 0;
int nbNatural = 100;
int i=0;

for (i=1; i<=nbNatural; i++) {
	sumSquares += i*i;
	squareSum += i;
}

squareSum = squareSum*squareSum;
diff = squareSum-sumSquares;

printf("Result: %d", diff);
}
