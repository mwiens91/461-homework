clear all;
close all;

alpha = 0.75;

ts = [1, 5, 10];
xs = linspace(-25, 25, 1000);

ys = zeros(length(ts), length(xs));

for i=1:length(ts)
    t = ts(i);
    ys(i, :) = alpha/(2*sqrt(pi*t)) * exp(-xs.^2/(4*t));
end

figure;

hold on;

for i=1:length(ts)
   plot(xs, ys(i, :));
end

plot(xs, 0.1*alpha * ones(1, length(xs)), '--');

hold off;

xlabel('x');
ylabel('concentration');

legend([compose("u(%d, x)", ts), "u = 0.1 \alpha"]);

print -dpng ../img/q453a.png -r300
