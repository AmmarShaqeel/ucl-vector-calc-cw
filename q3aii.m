%Gradient 

v = -4:0.1:4;
[x,y] = meshgrid(v);

z = y*exp(-(x.^2 + y.^2));

[px,py] = gradient(z,.1,.1);

figure(1);
contour(v,v,z,'linewidth',2);
hold on;
quiver(v,v,px,py,'linewidth',1);
hold off;

axis equal;
title('Gradient Plot');

