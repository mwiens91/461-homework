restart;
with(DEtools);

sys1 := [diff(x(t), t) = x(t) + y(t), diff(y(t), t) = 3*x(t) - y(t)];
sys2 := [diff(x(t), t) = 2*x(t) + y(t), diff(y(t), t) = 2*x(t) + 3*y(t)];
sys3 := [diff(x(t), t) = -x(t) - 2*y(t), diff(y(t), t) = 2*x(t) - y(t)];

DEplot(sys1, [x(t), y(t)], t = 0 .. 50, x = -1 .. 1, y = -1 .. 1, arrows = medium);
DEplot(sys2, [x(t), y(t)], t = 0 .. 50, x = -1 .. 1, y = -1 .. 1, arrows = medium);
DEplot(sys3, [x(t), y(t)], t = 0 .. 50, x = -1 .. 1, y = -1 .. 1, arrows = medium);
