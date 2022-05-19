load yale_32x32 %165 (32x32) images of 15 people(11 images of each person) 

x = fea'; %1024x165  1024=32x32  165=11x15

p = 1; %Person

ix1 = 1:11; %(p-1)*11+1:p*11;
ix0 = 12:22; %[1:(p-1)*11 p*11+1:165];

Nc0 = 11;
Nc1 = 165 - Nc0;

m = mean(x')';
m0 = mean(x(:,ix0)')';
m1 = mean(x(:,ix1)')';
Sb = (m0-m1)*(m0-m1)';

S0 = (Nc0-1)*cov(x(:,ix0)');
S1 = (Nc1-1)*cov(x(:,ix1)');
Sw = S0 + S1;

[V,D] = eigs(inv(Sw)*Sb);
Y = V'*x;
figure(1);
plot(Y(1,ix0),Y(2,ix0),'r*');hold on;
plot(Y(1,ix1),Y(2,ix1),'b*');
title('FDA: Yale Two-Class')
grid on;
axis equal;

