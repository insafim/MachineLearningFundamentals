x = iris_dataset; %Load dataset

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

figure(5);
bar(P);
title('Bayesian Classifier Considering All 4 Features')