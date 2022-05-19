clear all;

load yale_32x32 %165 (32x32) images of 15 people(11 images of each person)

%Multiclass
x = fea'; %1024x165  1024=32x32  165=11x15
x = x(:,1:44);

ix1 = 1:11;
ix2 = 12:22;
ix3 = 23:33;
ix4 = 34:44;

m = mean(x')';

m1 = mean(x(:,ix1)')';
m2 = mean(x(:,ix2)')';
m3 = mean(x(:,ix3)')';
m4 = mean(x(:,ix4)')';

Sb = (m1-m)*(m1-m)' + (m2-m)*(m2-m)' + (m3-m)*(m3-m)' + (m4-m)*(m4-m)';

S1 = 10*cov(x(:,ix1)');
S2 = 10*cov(x(:,ix2)');
S3 = 10*cov(x(:,ix3)');
S4 = 10*cov(x(:,ix4)');

Sw = S1 + S2 + S3 + S4;

[V,D] = eigs(inv(Sw)*Sb);
Y = V'*x;
figure(2);
plot3(Y(1,ix1),Y(2,ix1),Y(3,ix1),'ro','LineWidth',2);hold on;
plot3(Y(1,ix2),Y(2,ix2),Y(3,ix2),'bo','LineWidth',2);hold on;
plot3(Y(1,ix3),Y(2,ix3),Y(3,ix3),'go','LineWidth',2);hold on;
plot3(Y(1,ix4),Y(2,ix4),Y(3,ix4),'mo','LineWidth',2);
title('FDA: Yale Multi-Class')
grid on;
axis equal;

figure(3);
plot(Y(1,ix1),Y(2,ix1),'ro','LineWidth',2);hold on;
plot(Y(1,ix2),Y(2,ix2),'bo','LineWidth',2);hold on;
plot(Y(1,ix3),Y(2,ix3),'go','LineWidth',2);hold on;
plot(Y(1,ix4),Y(2,ix4),'mo','LineWidth',2);
title('FDA: Yale Multi-Class')
grid on;
axis equal;
