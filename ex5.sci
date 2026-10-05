n = -1:1;

x = [1, 3, -2];

x_folded = flipdim(x, 2);//Lật tín hiệu

//2 TP chẵn lẻ
x_e = 0.5 * (x + x_folded);
x_o = 0.5 * (x - x_folded);

clf();

//Tín hiệu gốc x(n)

subplot(3, 1, 1);
plot2d3(n, x);
plot(n, x, 'ko', 'MarkerFaceColor', 'k');

a1 = gca();
a1.box = "off";
a1.x_location = "origin";
a1.y_location = "origin";
a1.grid = [-1, -1];
a1.data_bounds = [-4, -4; 4, 4];

title("Original Signal x(n)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [2.5, 0.2]);
ylabel("x(n)", "fontsize", 2, "position", [0.1, 3.5]);

lbl1 = a1.y_label;
lbl1.auto_rotation = "off";
lbl1.font_angle = 0;

//Tín hiệu chẵn x_e(n)

subplot(3, 1, 2);
plot2d3(n, x_e);
plot(n, x_e, 'ko', 'MarkerFaceColor', 'k');

a2 = gca();
a2.box = "off";
a2.x_location = "origin";
a2.y_location = "origin";
a2.grid = [-1, -1];
a2.data_bounds = [-4, -1; 4, 4];

title("Even Component x_e(n)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [2.5, 0.2]);
ylabel("x_e(n)", "fontsize", 2, "position", [0.1, 3.5]);

lbl2 = a2.y_label;
lbl2.auto_rotation = "off";
lbl2.font_angle = 0;

//Tín hiệu lẻ x_o(n)

subplot(3, 1, 3);
plot2d3(n, x_o);
plot(n, x_o, 'ko', 'MarkerFaceColor', 'k');

a3 = gca();
a3.box = "off";
a3.x_location = "origin";
a3.y_location = "origin";
a3.grid = [-1, -1];
a3.data_bounds = [-4, -3; 4, 3];

title("Odd Component x_o(n)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [2.5, 0.2]);
ylabel("x_o(n)", "fontsize", 2, "position", [0.1, 2.5]);

lbl3 = a3.y_label;
lbl3.auto_rotation = "off";
lbl3.font_angle = 0;
