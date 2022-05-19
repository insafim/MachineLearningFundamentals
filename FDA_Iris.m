x = iris_dataset;

ix0 = 1:100;
ix1 = 101:150;

m0 = mean(x(:,ix0)')';
m1 = mean(x(:,ix1)')';
Sb = (m0-m1)*(m0-m1)';

S0 = 99*cov(x(:,ix0)');
S1 = 49*cov(x(:,ix1)');
Sw = S0 + S1;

figure(1);
[V,D] = eigs(inv(Sw)*Sb);
Y = V'*x;
plot(Y(1,ix0),Y(2,ix0),'r*');hold on;
plot(Y(1,ix1),Y(2,ix1),'b*');
% plot3(Y(1,ix0),Y(2,ix0),Y(3,ix0),'r*');hold on;
% plot3(Y(1,ix1),Y(2,ix1),Y(3,ix1),'b*');
title('FDA: IRIS Two-Class')
grid on;
axis equal;
