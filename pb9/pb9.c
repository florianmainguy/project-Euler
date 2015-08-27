/** PROBLEM 9 **/

/* A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

	a2 + b2 = c2
   For example, 3(2) + 4(2) = 9 + 16 = 25 = 5(2).

   There exists exactly one Pythagorean triplet for which a + b + c = 1000.
   Find the product abc. */

#include <stdio.h>

int main() {

int a = 0;
int b = 0;
int c = 0;
int abc = 0;
int no_result = 1;

for(a=1; a<1000 && no_result; a++) {
	for(b=a+1; b<1000 && no_result; b++) {
		for(c=b+1; c<1000 && no_result; c++) {
			if(a+b+c==1000 && a*a+b*b==c*c) {
				abc = a*b*c;
				no_result = 0;
			}
		}
	}
}

printf("Result: %d", abc);

}
