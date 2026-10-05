n = -2:1;
x = [1, -2, 3, 6];

y1 = flipdim(x, 2);
ny1 = -flipdim(n, 2);

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
a1.data_bounds = [-4.5, -3; 4.5, 7];

title("Signal x(n)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [4.2, 0.2]);
ylabel("x(n)", "fontsize", 2, "position", [0.2, 4]);

lbl1 = a1.y_label;
lbl1.auto_rotation = "off";
lbl1.font_angle = 0;

// Đồ thị 2: Tín hiệu lật y1(n) = x(-n)

subplot(2, 1, 2);
plot2d3(ny1, y1); // Vẽ theo trục thời gian đã lật ny1
plot(ny1, y1, 'ko', 'MarkerFaceColor', 'k');

a2 = gca();
a2.box = "off";
a2.x_location = "origin";
a2.y_location = "origin";
a2.grid = [-1, -1];
a2.data_bounds = [-4.5, -3; 4.5, 7];

title("Signal y1(n) = x(-n)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [4.2, 0.2]);
ylabel("y1(n)", "fontsize", 2, "position", [0.2, 4]);

lbl2 = a2.y_label;
lbl2.auto_rotation = "off";
lbl2.font_angle = 0;
