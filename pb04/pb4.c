/* A palindromic number reads the same both ways. The largest palindrome made from the product
 of two 2-digit numbers is 9009 = 91 x 99.

Find the largest palindrome made from the product of two 3-digit numbers. */

#include<stdio.h>

int main() {

int i=999,j=999;
int product=0,n=0,nbDigits=0,n1=0,n2 = 0;
int array[20];
int pal=0,palTemp=0,palI=0,palJ=0;

/* For each value of j from 999 to 0, find the first palindrome of the
product i*j for i decreasing from 999 */
while(j>0) {
    i = 999;
    palI=0;
    while(!palI && i>0) {
        product = i*j;

        /* How many digits in the product? */
        n = product;
        nbDigits = 0;
        while(n!=0) {
            array[nbDigits] = n%10;
            n/=10;
            nbDigits++;
        }

        /* Is it a palindrome? */
        palTemp=1;
        n1 = 0; n2 = nbDigits-1;
        while(palTemp) {
        if (array[n1] == array[n2]) {
            n1++;
            n2--;
            if(n1 == n2 || n2 < n1) {
                palI=1;
            }
        } else {
            palTemp=0;
        }
        }

    i--;
    }

    /* Keep largest palindrome */
    if(product > pal) {
        pal = product;
    }
    j--;
}

printf("The largest palindrome is: %d", pal);

}
