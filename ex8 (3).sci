n = -2:1;
x = [1, -2, 3, 6];

y3 = 2 * flipdim(x, 2);
ny3 = -flipdim(n, 2) - 2;
clf();

// Đồ thị 1: Tín hiệu x(n)

subplot(2, 1, 1);
plot2d3(n, x);
plot(n, x, 'ko', 'MarkerFaceColor', 'k');

a1 = gca();
a1.box = "off";
a1.x_location = "origin";
a1.y_location = "origin";
a1.grid = [-1, -1];
a1.data_bounds = [-6, -5; 6, 15];

title("Signal x(n)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [6, 0.2]);
ylabel("x(n)", "fontsize", 2, "position", [0.2, 12]);

lbl1 = a1.y_label;
lbl1.auto_rotation = "off";
lbl1.font_angle = 0;

// Đồ thị 2: Tín hiệu lật y3(n) = 2x(-n-2)

subplot(2, 1, 2);
plot2d3(ny3, y3);
plot(ny3, y3, 'ko', 'MarkerFaceColor', 'k');

a2 = gca();
a2.box = "off";
a2.x_location = "origin";
a2.y_location = "origin";
a2.grid = [-1, -1];
a2.data_bounds = [-6, -5; 6, 15];

title("Signal y3(n) = 2x(-n-2)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [6, 0.2]);
ylabel("y3(n)", "fontsize", 2, "position", [0.2, 12]);

lbl2 = a2.y_label;
lbl2.auto_rotation = "off";
lbl2.font_angle = 0;

