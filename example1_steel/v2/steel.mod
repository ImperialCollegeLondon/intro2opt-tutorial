# SETS
set PROD; # products

# PARAMETERS
param T; # hours per week
param c {PROD}; # [$/t] profit per ton of product
param B_max {PROD}; # [t] max weekly production
param t {PROD}; # [t/h] Production rate

# DECISION VARIABLES
var x {PROD} >= 0; # [t] ton of products to produce

# CONSTRAINTS
subject to max_prod {p in PROD}: x[p] <= B_max[p];
subject to hours_week: sum {p in PROD} (x[p] / t[p]) <= T;

# OBJECTIVE
maximize Profit: sum {p in PROD} (c[p] * x[p]);

solve;

display x;