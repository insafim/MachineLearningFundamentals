x = iris_dataset;

d = 2; %dimensionality

x = x(1:d,:); %Feature 1 & 2 (2*150)

ix0 = 1:50; %Class 0
ix1 = 51:150; %Class 1

x0 = x(:,ix0)'; %Fetaure 1 & 2 of Class 0 (50*2)
x1 = x(:,ix1)'; %Feature 1 & 2 of Class 1 (100*2)

m0 = mean(x0); %(1*2)
m1 = mean(x1); %(1*2)

mean0 = (1/50) * sum(x0) ; %(1*2) %m0

s0 = cov(x0); %(2*2)
s1 = cov(x1); %(2*2)

x01 = x0(:,1); %Feature 1 of Class 0 (50*1)
x02 = x0(:,2); %Feature 2 of Class 0 (50*1)

m01 = mean(x01); %Mean of Feature 1 of class 0
m02 = mean(x02); %Mean of Feature 2 of class 0

variance01 = (1/(50-1)) * (x01-m01)'*(x01-m01);
var01 = var(x01);

covariance0 = (1/(50-1)) * (x0-m0)'*(x0-m0); %(2*2) %s0
covariance1 = (1/(100-1)) * (x1-m1)'*(x1-m1); %(2*2) %s1






