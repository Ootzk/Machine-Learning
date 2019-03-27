
p = polyfit(gaussianNoise_samples_100.x, gaussianNoise_samples_100.y, 9);
b = ridge(gaussianNoise_samples_100.y', gaussianNoise_samples_100.x', 1);
b;

%x = gaussianNoise_samples_100.x'
%y = gaussianNoise_samples_100.y'