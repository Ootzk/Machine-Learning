function [ gaussianNoise ] = GaussianNoise_generator( range, numberOf_samples )
%GAUSSIANNOISE_GENERATOR: generates given number of samples coordinates that spaced uniformly in given range, with the function sin(2 * pi * x) added gaussian noise. returning coordinates are table. 'x' means x-coordinates, and 'y' means y-coordinates.

x = linspace(range(1), range(2), numberOf_samples);
y = awgn(sin(2 * pi * x), 10);

gaussianNoise = table(x, y);
end

