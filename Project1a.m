% Evan Trombetta
% AEE342: Aerodynamics
% Project 1a - Analysis of Symmetric Airfoils
% Due: January 23, 2015 at 9:30AM

%% Tuft & Contour
s1 = .10;
s2 = -.07;
s3 = -.03;

[x,y] = meshgrid(linspace(-4,4,40),linspace(-3,3,30));
F1 = s1.*(x+1)./((x+1).^2+y.^2)+s2.*x./(x.^2+y.^2)+s3.*(x-1)./((x-1).^2+y.^2)+1;
F2 = s1.*y./((x+1).^2+y.^2)+s2.*y./(x.^2+y.^2)+s3.*y./((x-1).^2+y.^2);
q = sqrt(F1.^2+F2.^2);

figure(1)
quiver(x, y, F1, F2);
xlim([-4 4])
ylim([-3 3])
xlabel('x')
ylabel('y')
title('u v tuft')

figure(2)
contourf(x,y,F1)
colormap jet
colorbar
xlim([-4 4])
ylim([-3 3])
xlabel('x')
ylabel('y')
title('contour of u (x-component)')

figure(3)
contourf(x,y,F2)
colormap jet
colorbar
xlim([-4 4])
ylim([-3 3])
xlabel('x')
ylabel('y')
title('contour of v (y-component)')

figure(4)
contourf(x,y,q)
colormap jet
colorbar
xlim([-4 4])
ylim([-3 3])
xlabel('x')
ylabel('y')
title('contour of local "speed"')

%% Streamline Plot
figure(5)
x1 = -4;
icedeath = -3:.2:3;

streamline(x,y,F1,F2,x1,icedeath(1));
streamline(x,y,F1,F2,x1,icedeath(2));
streamline(x,y,F1,F2,x1,icedeath(3));
streamline(x,y,F1,F2,x1,icedeath(4));
streamline(x,y,F1,F2,x1,icedeath(5));
streamline(x,y,F1,F2,x1,icedeath(6));
streamline(x,y,F1,F2,x1,icedeath(7));
streamline(x,y,F1,F2,x1,icedeath(8));
streamline(x,y,F1,F2,x1,icedeath(9));
streamline(x,y,F1,F2,x1,icedeath(10));
streamline(x,y,F1,F2,x1,icedeath(11));
streamline(x,y,F1,F2,x1,icedeath(12));
streamline(x,y,F1,F2,x1,icedeath(13));
streamline(x,y,F1,F2,x1,icedeath(14));
streamline(x,y,F1,F2,x1,icedeath(15));
streamline(x,y,F1,F2,x1,icedeath(17));
streamline(x,y,F1,F2,x1,icedeath(18));
streamline(x,y,F1,F2,x1,icedeath(19));
streamline(x,y,F1,F2,x1,icedeath(20));
streamline(x,y,F1,F2,x1,icedeath(21));
streamline(x,y,F1,F2,x1,icedeath(22));
streamline(x,y,F1,F2,x1,icedeath(23));
streamline(x,y,F1,F2,x1,icedeath(24));
streamline(x,y,F1,F2,x1,icedeath(25));
streamline(x,y,F1,F2,x1,icedeath(26));
streamline(x,y,F1,F2,x1,icedeath(27));
streamline(x,y,F1,F2,x1,icedeath(28));
streamline(x,y,F1,F2,x1,icedeath(29));
streamline(x,y,F1,F2,x1,icedeath(30));
streamline(x,y,F1,F2,x1,icedeath(31));

stagx = -1.05;
stagy = 0;
stagx2 = .25;
stagx3 = 1.2;
stagx4 = (1.2:.01:4);
hold on 
plot(stagx,stagy,'b*')
plot(stagx2,stagy,'b*')
plot(stagx3,stagy,'b*')
plot(stagx4,stagy,'r')