% Starting params
I0 = 100;
alpha = 0.3;
tmax = 15;
tmaxd = 20; % use this for discrete steps
dsteps = [0.125, 0.25, 1, 2, 10];

figure;
hold on;

% Continuous model
ts = linspace(0, tmax);
ys = I0 * exp(-alpha * ts);

plot(ts, ys);

% Discrete models
for step=dsteps
   ts = 0:step:tmaxd;
   ns = 0:(length(ts) -1);
   p = alpha * step;
   
   if p >= 1
      ys = [[I0], zeros(1, length(ts) - 1)];
   else
      ys = I0 * (1 - p).^ns;
   end

   plot(ts, ys)
end

xlim([0, tmax]);
ylim([0, I0]);
xlabel("time (days)");
ylabel("number infected");
legend([["continuous"], compose("step = %.3f", dsteps)]);
print -dpng ../img/q142.png
