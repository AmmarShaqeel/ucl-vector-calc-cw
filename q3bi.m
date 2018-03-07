v = -2:0.1:2;
[x,y] = meshgrid(v);

u1 = -cos(x).*sin(y);
u2 = y;

figure(1)
quiver(x,y,u1,u2);
hold on;
div = divergence(x,y,u1,u2);
contour(x,y,div,'linewidth',2);
title('Divergence Plot');