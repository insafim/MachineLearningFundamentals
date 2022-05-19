x = iris_dataset;

ix1 = 1:50;
ix2 = 51:100;
ix3 = 101:150;


m = mean(x')';

m1 = mean(x(:,ix1)')';
m2 = mean(x(:,ix2)')';
m3 = mean(x(:,ix3)')';

Sb = (m1-m)*(m1-m)' + (m2-m)*(m2-m)' + (m3-m)*(m3-m)';

S1 = 49*cov(x(:,ix1)');
S2 = 49*cov(x(:,ix2)');
S3 = 49*cov(x(:,ix3)');

Sw = S1 + S2 + S3;

[V,D] = eigs(inv(Sw)*Sb);
Y = V'*x;
plot(Y(1,ix1),Y(2,ix1),'r*');hold on;
plot(Y(1,ix2),Y(2,ix2),'b*');hold on;
plot(Y(1,ix3),Y(2,ix3),'g*');hold on;
% plot3(Y(1,ix0),Y(2,ix0),Y(3,ix0),'r*');hold on;
% plot3(Y(1,ix1),Y(2,ix1),Y(3,ix1),'b*');
title('FDA: IRIS Multi-Class')
grid on;
axis equal;
