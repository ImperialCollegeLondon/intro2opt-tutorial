# PARAMETERS
param T := 40; # hours per week
param c_B := 25; # [$/t] profit per ton of BANDS
param c_C := 30; # [$/t] profit per ton of COILS
param B_max := 6000; # [t] max weekly production of BANDS
param C_max := 4000; # [t] max weekly production of COILS
param t_B := 200; # [t/h] Bands production rate
param t_C := 140; # [t/h] Coils production rate

# DECISION VARIABLES
var x_B >= 0; # [t] ton of BANDS to produce
var x_C >= 0; # [t] ton of COILS to produce

# CONSTRAINTS
subject to max_prod_bands: x_B <= B_max;
subject to max_prod_coils: x_C <= C_max;
subject to hours_week: x_B / t_B + x_C / t_C <= T;

# OBJECTIVE
maximize Profit: c_B * x_B + c_C * x_C;

solve;

display x_B, x_C;