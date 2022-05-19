x = iris_dataset;

%x = x.*x; 
%x = tanh(x); %tanh
x = 1./(1+exp(-x)); %sigmoid

figure(1);
plot(x');
title('Feature space (sigmoid(x))');

ix1 = 1:50;
ix2 = 51:100;
ix3 = 101:150;

m = mean(x')';
xmr = x-m;
s = cov(xmr');
[V,D] = eigs(s1);
y = V'*xmr;

figure(2);
plot3(y(1,ix1),y(2,ix1),y(3,ix1),'bo');hold on;
plot3(y(1,ix2),y(2,ix2),y(3,ix2),'ro');hold on;
plot3(y(1,ix3),y(2,ix3),y(3,ix3),'go');
title('PCA on sigmoid(x)');
xlabel('PCA 1');
ylabel('PCA 2');
zlabel('PCA 3');
axis equal; 

figure(3);
plot(y(1,ix1),y(2,ix1),'bo');hold on;
plot(y(1,ix2),y(2,ix2),'ro');hold on;
plot(y(1,ix3),y(2,ix3),'go');
title('PCA on sigmoid(x)');
xlabel('PCA 1');
ylabel('PCA 2');
axis equal; 

