% set figure option
figure(1), ylim([-1.5, 1.5]), title('Question 1'), xlabel('x'), ylabel('y'), hold on;

% plot original signal y = sin(2 * pi * x)
plot(linspace(0, 1), sin(2 * pi * linspace(0, 1)), 'g'), hold on;

% generate gaussian noise samples with range = [0, 1], number of samples = 10
gaussianNoise_samples_10 = GaussianNoise_generator([0, 1], 10);

% plot gaussian noise samples
plot(gaussianNoise_samples_10.x, gaussianNoise_samples_10.y, 'o'), hold on;