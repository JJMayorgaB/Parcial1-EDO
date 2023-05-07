x = linspace(-5,5,1000);

[X1,Y1] = meshgrid(x,x);
Z1 = Y1 - Y1./(X1.^2+Y1.^2) - 1;

[X2,Y2] = meshgrid(x,x);
Z2 = Y2 - Y2./(X2.^2+Y2.^2) + 1;

[X3,Y3] = meshgrid(x,x);
Z3 = Y3 - Y3./(X3.^2+Y3.^2);

[X4,Y4] = meshgrid(x,x);
Z4 = Y4 - Y4./(X4.^2+Y4.^2) + 0.5;

[X5,Y5] = meshgrid(x,x);
Z5 = Y5 - Y5./(X5.^2+Y5.^2) - 0.5;

[X6,Y6] = meshgrid(x,x);
Z6 = Y6 - Y6./(X6.^2+Y6.^2) + 0.25;

[X7,Y7] = meshgrid(x,x);
Z7 = Y7 - Y7./(X7.^2+Y7.^2) - 0.25;

[X8,Y8] = meshgrid(x,x);
Z8 = Y8 - Y8./(X8.^2+Y8.^2) + 0.75;

[X9,Y9] = meshgrid(x,x);
Z9 = Y9 - Y9./(X9.^2+Y9.^2) - 0.75;

[X10,Y10] = meshgrid(x,x);
Z10 = Y10 - Y10./(X10.^2+Y10.^2) + 1.25;

[X11,Y11] = meshgrid(x,x);
Z11 = Y11 - Y11./(X11.^2+Y11.^2) - 1.25;

contour(X1,Y1,Z1,[0 0],'LineWidth',1, "linecolor","#4DBEEE")
hold on
contour(X3,Y3,Z3,[0 0],'LineWidth',2,'LineColor',"#A2142F")
contour(X2,Y2,Z2,[0 0],'LineWidth',1, "linecolor","#4DBEEE")
contour(X4,Y4,Z4,[0 0],'LineWidth',1, "linecolor","#4DBEEE")
contour(X5,Y5,Z5,[0 0],'LineWidth',1, "linecolor","#4DBEEE")
contour(X6,Y6,Z6,[0 0],'LineWidth',1, "linecolor","#4DBEEE")
contour(X7,Y7,Z7,[0 0],'LineWidth',1, "linecolor","#4DBEEE")
contour(X8,Y8,Z8,[0 0],'LineWidth',1, "linecolor","#4DBEEE")
contour(X9,Y9,Z9,[0 0],'LineWidth',1, "linecolor","#4DBEEE")
contour(X10,Y10,Z10,[0 0],'LineWidth',1, "linecolor","#4DBEEE")
contour(X11,Y11,Z11,[0 0],'LineWidth',1, "linecolor","#4DBEEE")
hold off
axis([-4 4 -2 2])
grid on
xlim([-4, 4])
ylim([-2, 2])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';


title("Curvas de nivel $v(x,y)$ = $y-\frac{y}{x^2+y^2}$ = $c$, para $c$ = $0,\pm0.25,\pm0.5,\pm0.75, \pm1, \pm1.25$","Interpreter","latex")
xlabel("\boldmath{$x$}","Interpreter","latex")
ylabel("\boldmath{$y$}","Interpreter","latex")
legend("$v(x,y)$ = $y-\frac{y}{x^2+y^2}$ = $c$","$v(x,y)$ = $0$",Interpreter="latex")
