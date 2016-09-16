/** PROBLEM 15 **/
/* Starting in the top left corner of a 2×2 grid, and only being able to move
 * to the right and down, there are exactly 6 routes to the bottom right corner.
 * How many such routes are there through a 20×20 grid? */

/** METHOD **/
/* The grid is composed of interesections we will call nodes.
 * This problem is about finding how many possible routes there is between the
 * top left node and the bottom right node.
 * A node has 2 inputs and 2 outputs. The number of possible routes in each output
 * is equal to the sum of the possible routes in input.
 * By starting on the top left node, we will estimate the number of routes for each
 * output of the nodes met, and put the values in an array. When we will arrive on
 * the bottom right node, the value in the array will be the number of possible
 * routes. */

#include <stdio.h>
#include <stdint.h>

int main() {

/* Lenght of grid */
int Lenght = 20;

/* Base array of possible routes after top left node */
uint64_t routes[1000] = {0,1,1,0};
uint64_t tempo[1000] = {};

int nb_routes = 0;
int i = 0;
int j = 0;
int nb_elements = 0;

/* 1st phase: nodes on the side of the grid have 1 input and 2 outputs */
nb_elements = 4;
for (i = 1; i < Lenght; i++) {
  printf("Phase 1, routes[0]: %d\n", routes[0]);
  tempo[0] = 0;
  for (j = 1; j <= nb_elements-1; j+=2) {
    tempo[j] = routes[j-1]+ routes[j];
    tempo[j+1] = routes[j-1]+ routes[j];
  }
  tempo[nb_elements+1] = 0;

  nb_elements = nb_elements + 2;
  for (j = 0; j < 1000; j++) {
      routes[j] = tempo[j];
   }

  printf("\nroutes:");
   for (j = 0; j < 10; j++) {
      printf("%d ",routes[j]);
   }
   printf("\n");

}

/* 2nd phase: nodes on the side of the grid have 2 inputs and 1 output */
nb_elements = Lenght*2 + 2;
for (i = Lenght; i >= 1; i--) {
  printf("Phase 2, routes[0]: %d\n", routes[0]);
  tempo[0] = routes[0] + routes[1];
  for (j = 1; j <= nb_elements-3; j+=2) {
    tempo[j] = routes[j+1]+ routes[j+2];
    tempo[j+1] = routes[j+1]+ routes[j+2];
  }
  /*tempo[nb_elements-3] = routes[nb_elements-1] + routes[nb_elements];*/

  nb_elements = nb_elements - 2;
  for (j = 0; j < 1000; j++) {
      routes[j] = tempo[j];
   }

   printf("\nroutes:");
   for (j = 0; j < 10; j++) {
      printf("%d ",routes[j]);
   }
   printf("\n");
  
}

nb_routes = routes[0] + routes[1];

printf("Number of possible routes for a grid of %dx%d: %d", Lenght,Lenght,nb_routes);

}
