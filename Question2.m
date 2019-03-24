% set figure option
figure(2), ylim([-1.5, 1.5]), title('Question 2'), xlabel('x'), ylabel('y'), hold on;

% plot original signal y = sin(2 * pi * x)
plot(linspace(0, 1), sin(2 * pi * linspace(0, 1)), 'g'), hold on;

% plot already made samples.
plot(gaussianNoise_samples_10.x, gaussianNoise_samples_10.y, 'o'), hold on;

% generate regression lines with given order and plot them
for order = [1, 3, 5, 9]
    regression_line = RegressionLine_generator([0, 1], gaussianNoise_samples_10, order);
    plot(regression_line.x, regression_line.y, '--'), hold on;
    clear regression_line; clear order;
end

% show legend
legend('original signal', 'gaussian noise samples: 10', '1', '3', '5', '9');