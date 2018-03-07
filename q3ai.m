%Gradient 

v = -3:0.1:3;
[x,y] = meshgrid(v);

z = sin(x).*cos(y);

[px,py] = gradient(z,.1,.1);

figure(1);
contour(v,v,z,'linewidth',2);
hold on;
quiver(v,v,px,py,'linewidth',1);
hold off;

axis equal;
title('Gradient Plot');
