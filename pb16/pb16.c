/** PROBLEM 16 **/

/* Power digit sum
 * 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
 * What is the sum of the digits of the number 2^1000? */

/* In C, numbers can have a maximum of 19 decimal digits
 * Bigger numbers are store in arrays, digits per digits */

#include <stdio.h>

int main() {

int exponent = 1000;
int base = 2;
int result[500] = {};
int sum_digits = 0;
int i,j = 0;
int count = 0;
int temp = 0;
int retenu = 0;
int reste = 0;

result[0] = 1;
// Calculation of the number 
for (i=1; i <= exponent; i++) {
  // Counts numbers of digits in number
  count = 0;
  for (j=0; j < 500; j++) {
    if (result[j] != 0) {
      count = j+1;
    }
  }

  // Multiply number by base
  for (j=0; j <= count; j++) {
    temp = (result[j] * base) + retenu;
   
    if ((temp % 10 != 0)||(temp == 10)) {
      retenu = temp / 10;
      reste = temp % 10;
    }
    else {
      retenu = 0;
      reste = temp;
    }
    result[j] = reste;
  }
}

// Sum of digits
for (i=0; i < 500; i++) {
  sum_digits += result[i];
}

printf("Result: %d", sum_digits);
}
