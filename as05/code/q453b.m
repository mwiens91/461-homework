clear all;
close all;

ts = linspace(0, 10, 500);
xs = 4 * ts .* log(5 ./ sqrt(pi * ts));

figure;

plot(ts, xs);
grid on;

print -dpng ../img/q453b.png -r300
