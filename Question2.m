% load samples from Question1.m
load('gaussianNoise10.mat');

% set figure option
figure(2), ylim([-1.5, 1.5]), title('Question 2'), xlabel('x'), ylabel('y'), hold on;

% plot original signal y = sin(2 * pi * x)
plot(linspace(0, 1), sin(2 * pi * linspace(0, 1)), 'g', 'LineWidth', 2), hold on;

% plot loaded samples.
plot(gaussianNoise_samples_10.x, gaussianNoise_samples_10.y, 'o'), hold on;

% generate regression lines with given order and plot them
for order = [1, 3, 5, 9]
    plot(linspace(0, 1), polyval(polyfit(gaussianNoise_samples_10.x, gaussianNoise_samples_10.y, order), linspace(0, 1)), '--'), hold on;
end

% show legend
legend('original signal', 'gaussian noise samples: 10', '1', '3', '5', '9');