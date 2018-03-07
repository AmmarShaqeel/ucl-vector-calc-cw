v = -2:0.1:2;
[x,y] = meshgrid(v);

u1 = 3*x.^2;
u2 = -y^2;

figure(1)
quiver(x,y,u1,u2);
hold on;
div = divergence(x,y,u1,u2);
contour(x,y,div,'linewidth',2);
title('Divergence Plot');