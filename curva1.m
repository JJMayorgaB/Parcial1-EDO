//Este codigo corresponde a la grafica realizada en MATLAB para las curvas de nivel v(x, y) = y − 2xy = c1 son la familia de curvas u(x, y) = x − x^2 + y^2 = c2

x=linspace(-5,5,1000);
x01=[0.5 0.5];
y01=[-3,3];
x02=[-5,5];
y02=[0,0];
y1 = 1 ./ (1-2*x);
y2 = 2 ./ (1-2*x);
y3 = 3 ./ (1-2*x);
y11 = -1 ./ (1-2*x);
y21 = -2 ./ (1-2*x);
y31 = -3 ./ (1-2*x);

z01 = sqrt(- x + x.^2);
z011 = -sqrt(- x + x.^2);
z11 = sqrt(1 - x + x.^2);
z12 = -sqrt(1 - x + x.^2);
z21 = sqrt(2 - x + x.^2);
z22 = -sqrt(2 - x + x.^2);
z31 = sqrt(3 - x + x.^2);
z32 = -sqrt(3 - x + x.^2);
z111 = sqrt(-1 - x + x.^2);
z121 = -sqrt(-1 - x + x.^2);
z211 = sqrt(-2 - x + x.^2);
z221 = -sqrt(-2 - x + x.^2);
z311 = sqrt(-3 - x + x.^2);
z321 = -sqrt(-3 - x + x.^2);

plot(x01,y01,"b-")

hold on

plot(x,z01,"r-")
plot(x02,y02,"b-")
plot(x,y1,"b-")
plot(x,y2,"b-")
plot(x,y3,"b-")
plot(x,y11,"b-")
plot(x,y21,"b-")
plot(x,y31,"b-")


plot(x,z011,"r-")
plot(x,z11,"r-")
plot(x,z12,"r-")
plot(x,z21,"r-")
plot(x,z22,"r-")
plot(x,z31,"r-")
plot(x,z32,"r-")
plot(x,z111,"r-")
plot(x,z121,"r-")
plot(x,z211,"r-")
plot(x,z221,"r-")
plot(x,z311,"r-")
plot(x,z321,"r-")

hold off


axis([-5 5 -3 3])
grid on
xlim([-5, 5])
ylim([-3, 3])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

title("Curvas de nivel $v(x,y)$ = $y - 2xy$ = $c$ y sus trayectorias ortogonales $u(x,y)$ = $x - x^2 + y^2$  = $c$, para $c$ = $0,\pm1,\pm2,\pm3$","Interpreter","latex")
xlabel("\boldmath{$x$}","Interpreter","latex")
ylabel("\boldmath{$y$}","Interpreter","latex")
legend("$v(x,y)$ = $y-2xy$ = $c$","$u(x,y)$ = $x - x^2 + y^2$  = $c$",Interpreter="latex")