x = iris_dataset;

d = 2;

x = x([1 3],:);

ix0 = 1:50;
ix1 = 51:150;


m = mean(x')';

xmr = x-m;

s1 = cov(x');
s2 = cov(xmr');
s3 = (1/(149))*(xmr*xmr');

[V,D] = eigs(s1);

y = V'*xmr;

figure(1);
plot(xmr(1,ix0),xmr(2,ix0),'bo');hold on;
plot(xmr(1,ix1),xmr(2,ix1),'ro'); axis equal;
axis equal;

v1 = V(:,1);
v2 = V(:,2);
d1 = D(1,1);
d2 = D(2,2);

plotv(v1);
plotv(v2);

figure(2);
plot(y(1,ix0),y(2,ix0),'bo');hold on;
plot(y(1,ix1),y(2,ix1),'ro'); 
axis equal; 

sy = cov(y');



