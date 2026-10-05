n = -1:3;

x1 = [0, 0, 1, 3, -2];
x2 = [0, 1, 2, 3, 0];

// Tính tín hiệu tích y(n)
y = x1.*x2;

clf();

// Đồ thị 1: Tín hiệu x1(n)

subplot(3, 1, 1);
plot2d3(n, x1);
plot(n, x1, 'ko', 'MarkerFaceColor', 'k');

a1 = gca();
a1.box = "off";
a1.x_location = "origin";
a1.y_location = "origin";
a1.grid = [-1, -1];
a1.data_bounds = [-10, -3; 10, 7];

title("Signal x1(n)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [4.2, 0.2]);
ylabel("x1(n)", "fontsize", 2, "position", [0.2, 4]);

lbl1 = a1.y_label;
lbl1.auto_rotation = "off";
lbl1.font_angle = 0;

// Đồ thị 2: Tín hiệu x2(n)

subplot(3, 1, 2);
plot2d3(n, x2);
plot(n, x2, 'ko', 'MarkerFaceColor', 'k');

a2 = gca();
a2.box = "off";
a2.x_location = "origin";
a2.y_location = "origin";
a2.grid = [-1, -1];
a2.data_bounds = [-10, -3; 10, 7];

title("Signal x2(n)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [4.2, 0.2]);
ylabel("x2(n)", "fontsize", 2, "position", [0.2, 4]);

lbl2 = a2.y_label;
lbl2.auto_rotation = "off";
lbl2.font_angle = 0;

// Đồ thị 3: Tín hiệu tổng y(n) = x1(n) + x2(n)

subplot(3, 1, 3);
plot2d3(n, y);
plot(n, y, 'ko', 'MarkerFaceColor', 'k');

a3 = gca();
a3.box = "off";
a3.x_location = "origin";
a3.y_location = "origin";
a3.grid = [-1, -1];
a3.data_bounds = [-10, -2; 10, 10];

title("Signal y(n) = x1(n) + x2(n)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [4.2, 0.2]);
ylabel("y(n)", "fontsize", 2, "position", [0.2, 4]);

lbl3 = a3.y_label;
lbl3.auto_rotation = "off";
lbl3.font_angle = 0;
