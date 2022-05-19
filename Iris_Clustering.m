x = iris_dataset;

ix0 = 1:50; %w0
ix1 = 50:150; %]w0

x0 = x(1,:);
x1 = x(2,:);
x2 = x(3,:);
x3 = x(4,:);

figure(1);hold on 
plot(x0(1,ix0),x1(1,ix0),'ro');
plot(x0(1,ix1),x1(1,ix1),'bo');


figure(2); 
plot3(x0(1,ix0),x1(1,ix0),x2(1,ix0),'ro');hold on
plot3(x0(1,ix1),x1(1,ix1),x2(1,ix1),'bo');
