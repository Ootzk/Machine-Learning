function [ regression_line ] = RegressionLine_generator( range, sample, order )
%REGRESSIONLINE_GENERATOR generates regression line with given order from given samples in given range
x = linspace(range(1), range(2));
polynomial = polyfit(sample.x, sample.y, order);
y = polyval(polynomial, x);

regression_line = table(x, y);
end

