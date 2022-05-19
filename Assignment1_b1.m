x = iris_dataset; %Load dataset

x1 = x(1,:); %Feature1
x2 = x(2,:); %Feature2
x3 = x(3,:); %Feature3
x4 = x(4,:); %Feature4

X = [x4',x3',x2',x1',ones(150,1)];
Y = [-ones(100,1);ones(50,1)];
W = (inv(X'*X))*X'*Y; %Least Mean Square
Yhat = X*W;

figure(1);
bar(Yhat)
title('Linear Regression Classifier Considering All 4 Features')

%Bayesian Decision
d = 4;
x = x(1:d,:);

ix0 = 1:100;
ix1 = 101:150;

m0 = mean(x(:,ix0)')';
m1 = mean(x(:,ix1)')';

s0 = cov(x(:,ix0)');
s1 = cov(x(:,ix1)');

pw0 = 2/3;
pw1 = 1-pw0;

P = [];
for k=1:150

    p_x_w0 = (1/sqrt(((2*pi)^d)*det(s0)))*exp(-0.5*(x(:,k)-m0)'*inv(s0)*(x(:,k)-m0));
    p_x_w1 = (1/sqrt(((2*pi)^d)*det(s1)))*exp(-0.5*(x(:,k)-m1)'*inv(s1)*(x(:,k)-m1));
    
    p_w0_x = p_x_w0*pw0;
    p_w1_x = p_x_w1*pw1;
    
    px = p_w0_x + p_w1_x;
    
    p_w0_x = p_x_w0*pw0/px;
    p_w1_x = p_x_w1*pw1/px;
    
    P = [P p_w1_x-p_w0_x];
end

figure(2);
bar(P);
title('Bayesian Classifier Considering All 4 Features')