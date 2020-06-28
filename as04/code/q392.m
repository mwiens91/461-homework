clear all;
close all;

k = 1/3;
M = 100;

xs = linspace(0, 100, 500);
ys = k * (M - xs);

figure;

plot(xs, ys);

xlabel("P");
ylabel("dP / dt");

print -dpng ../img/q392a.png -r300

close all;

ks = [1/4, 1/3, 1/2, 1];
ts = linspace(0, 10, 500);

ys = zeros(length(ks), length(ts));

for i=1:length(ks)
    k = ks(i);
    ys(i, :) = M * (1 - exp(-k*ts));
end

figure;

hold on;

for i=1:length(ks)
   plot(ts, ys(i, :)); 
end

plot(ts, M * ones(1, length(ts)), '--');

hold off;

ylim([0, M + 10]);

xlabel('t');
ylabel('P');

legend([compose("P(t), k = %0.2f", ks), "P = M"], 'Location', 'southeast');

print -dpng ../img/q392b.png -r300
