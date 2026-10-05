n = -5:5;

x=max(0,n);
clf();
plot2d3(n, x);
plot(n, x, 'ko', 'MarkerFaceColor', 'k');
a = gca();
a.box = "off";
a.x_location = "origin";
a.y_location = "origin";
a.grid = [-1, -1];

xlabel("n", "fontsize", 3, "position", [10, 0.1]);
ylabel("x(n)", "fontsize", 3, "position", [0.3, 5.8]);
lbl = a.y_label;
lbl.auto_rotation = "off";
lbl.font_angle = 0;

a.data_bounds = [-8.5, -0.5; 8.5, 6];
