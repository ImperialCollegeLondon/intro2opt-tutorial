###########
# KnapSack problem - data file
# Implementation of the standard Knapsack problem
#
# Author: S. Moret
# Date: 09.03.2021
###########

# SETS
param N;
set OBJECTS := 1 .. N;

# PARAMETERS
param w {OBJECTS}; # weight of the objects
param c {OBJECTS}; # cost of the objects
param W; # maximum capacity of the knapsack (weight)

# VARIABLES
var x {OBJECTS} binary; # binary variable

# OBJECTIVE FUNCTION
maximize total_value: sum {i in OBJECTS} c[i] * x[i];

# CONSTRAINTS
subject to con1: sum {i in OBJECTS} (w[i] * x[i]) <= W;
/*
solve;
display x;
display total_value;
*/