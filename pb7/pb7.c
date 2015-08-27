/** PROBLEM 7 **/

/* By listing the first six prime numbers:
   2, 3, 5, 7, 11, and 13, we can see that
   the 6th prime is 13.

   What is the 10 001st prime number? */


#include<stdio.h>

int main() {

int primeRank = 1;
int primeNb = 0;
int number = 2;
int i = 0;

int isItPrime = 1;

do {

  isItPrime = 1;
  number++;

  /* Is "number" a prime number? */
  for(i=2;i<number;i++) {
	if(number%i == 0) {
	    isItPrime = 0;
	}
  }

  if(isItPrime == 1) {
	primeNb = number;
	primeRank++;
  }

} while(primeRank < 10001);

printf("Result: %d", primeNb);

}


