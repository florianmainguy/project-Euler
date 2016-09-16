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

/** Execution time: 0.035s **/

#include <stdio.h>

int main() {

/* Lenght of grid */
int Lenght = 20;

/* Base array of possible routes after top left node */
unsigned long pre_node[1000] = {0,1,1,0};
unsigned long post_node[1000] = {};
unsigned long nb_pre_node = 0;
int i = 0;
int j = 0;
int nb_elements = 4; // number of non null elements in 'pre-node'

/* 1st phase: nodes on the edge of the grid have 1 input and 2 outputs */
for (i = 1; i < Lenght; i++) {
  /* possible routes after nodes pushed into 'post-node' */
  post_node[0] = 0;
  for (j = 1; j <= nb_elements-1; j+=2) {
    post_node[j] = pre_node[j-1]+ pre_node[j];
    post_node[j+1] = post_node[j];
  }
  post_node[nb_elements+1] = 0;

  /* post_node becomes pre_node */
  nb_elements = nb_elements + 2;
  for (j = 0; j < 1000; j++) {
    pre_node[j] = post_node[j];
  }
}

/* 2nd phase: nodes on the edge of the grid have 2 inputs and 1 output */
nb_elements = Lenght*2 + 2;
for (i = Lenght; i >= 1; i--) {
  post_node[0] = pre_node[0] + pre_node[1];
  for (j = 1; j <= nb_elements-3; j+=2) {
    post_node[j] = pre_node[j+1]+ pre_node[j+2];
    post_node[j+1] = post_node[j];
  }

  nb_elements = nb_elements - 2;
  for (j = 0; j < 1000; j++) {
    pre_node[j] = post_node[j];
  }
}

nb_pre_node = pre_node[0] + pre_node[1];
printf("Number of possible pre_node for a grid of %dx%d: %lu", Lenght,Lenght,nb_pre_node);

}
