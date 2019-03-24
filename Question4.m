p = polyfit(gaussianNoise_samples_100.x, gaussianNoise_samples_100.y, 9);
eq = poly2sym(p);
prob = optimproblem('Objectivve', eq);
[x, fval, exitflag, output, lambda] = quadprog(prob2struct(prob));