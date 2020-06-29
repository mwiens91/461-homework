restart;
with(DEtools):

a := 1;
b := 1/2;
d := 1/2;
g := 1;
K := 1;

sys := [diff(n(t), t) = (a - b - K*y(t))*n(t), diff(y(t), t) = g*n(t) - d*y(t)];

DEplot(sys, [n(t), y(t)], t = 0 .. 50, n = 0 .. 2, y = 0 .. 2, arrows = medium);

ivs := [[n(0) = 1, y(0) = 1], [n(0) = 1.7, y(0) = 0.2], [n(0) = 1.6, y(0) = 1.9]];

DEplot(sys, [n(t), y(t)], t = 0 .. 50, n = 0 .. 2, y = 0 .. 2, ivs, arrows = medium, numpoints = 500);
