# Lattice paths

Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20×20 grid?

### Method

The grid is composed of intersections we will call nodes.
This problem is about finding how many possible routes there is between the top left node and the bottom right node.
A node has 2 inputs and 2 outputs. The number of possible routes in each output is equal to the sum of the possible routes in input.
By starting on the top left node, we will estimate the number of routes for each output of the nodes met, and put the values in an array. When we will arrive on the bottom right node, the value in the array will be the number of possible routes.

After solving this problem, I realized I generated Pascal's triangle.

### Execution Time

- pb15.c: 0.035s