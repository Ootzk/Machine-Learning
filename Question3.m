% set figure option
figure(3), ylim([-1.5, 1.5]), title('Question 3'), xlabel('x'), ylabel('y'), hold on;

% plot original signal y = sin(2 * pi * x)
plot(linspace(0, 1), sin(2 * pi * linspace(0, 1)), 'g'), hold on;

% generate gaussian noise samples with range = [0, 1], number of samples = 100
gaussianNoise_samples_100 = GaussianNoise_generator([0, 1], 100);

% plot gaussian noise samples
plot(gaussianNoise_samples_100.x, gaussianNoise_samples_100.y, 'o'), hold on;

% generate regression lines with given order and plot them
for order = [1, 3, 5, 9]
    regression_line = RegressionLine_generator([0, 1], gaussianNoise_samples_100, order);
    plot(regression_line.x, regression_line.y, '--'), hold on;
end

% show legend
legend('original signal', 'gaussian noise samples: 100', '1', '3', '5', '9');