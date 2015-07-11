/** PROBLEM 4 **/

/* 2520 is the smallest number that can be divided by each of the numbers from 1 to 10
   without any remainder.

   What is the smallest positive number that is evenly divisible by all of the numbers
   from 1 to 20? */

#include <stdio.h>

int main() {

   int number = 0;
   int smallest = 0;
   int noRemainder = 1;
   int i = 20;

   while (!smallest){
	i = 20;
    noRemainder = 1;
	number++;
	while (noRemainder && i!=0) {
	    if (number%i != 0) {
		    noRemainder = 0;
	    }
	    i--;
	}
	if (noRemainder == 1) {
	    smallest = 1;
	}
   }

   printf("Result: %d", number);
}
