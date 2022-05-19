x = iris_dataset;

d = 2;

x = x(1:d,:);

ix0 = 1:50;
ix1 = 51:150;

m0 = mean(x(:,ix0)')';
m1 = mean(x(:,ix1)')';

s0 = cov(x(:,ix0)');
s1 = cov(x(:,ix1)');

pw0 = 1/3;
pw1 = 1-pw0;


P = [];
PP = [];
for k=1:150

    p_x_w0 = (1/sqrt(((2*pi)^d)*det(s0)))*exp(-0.5*(x(:,k)-m0)'*inv(s0)*(x(:,k)-m0));
    p_x_w1 = (1/sqrt(((2*pi)^d)*det(s1)))*exp(-0.5*(x(:,k)-m1)'*inv(s1)*(x(:,k)-m1));
    
    p_w0_x = p_x_w0*pw0;
    p_w1_x = p_x_w1*pw1;
    
    P = [P p_w0_x-p_w1_x];
    
    px = p_w0_x + p_w1_x;
    
    p_w0_x = p_x_w0*pw0/px;
    p_w1_x = p_x_w1*pw1/px;
    
    PP = [PP p_w0_x-p_w1_x];
end

figure(1);
bar(P);
title('Bivariate Classifier (excluding evidence)');

figure(2);
bar(PP);
title('Bivariate Classifier (including evidence)');

figure(3);
for k=1:1000
    xx = rand(2,1)*10;
    p_x_w0 = (1/sqrt(((2*pi)^d)*det(s0)))*exp(-0.5*(xx-m0)'*inv(s0)*(xx-m0));
    p_x_w1 = (1/sqrt(((2*pi)^d)*det(s1)))*exp(-0.5*(xx-m1)'*inv(s1)*(xx-m1));
    
    p_w0_x = p_x_w0*pw0;
    p_w1_x = p_x_w1*pw1;
    
    if (p_w0_x)>(p_w1_x)
        plot(xx(1),xx(2),'b*');hold on;
        
    else 
        plot(xx(1),xx(2),'r*');hold on;
        
    end
end


figure(4);
for k=1:1000
    xx = rand(2,1)*10;
    p_x_w0 = (1/sqrt(((2*pi)^d)*det(s0)))*exp(-0.5*(xx-m0)'*inv(s0)*(xx-m0));
    p_x_w1 = (1/sqrt(((2*pi)^d)*det(s1)))*exp(-0.5*(xx-m1)'*inv(s1)*(xx-m1));
    
    p_w0_x = p_x_w0*pw0;
    p_w1_x = p_x_w1*pw1;
    
    px = p_w0_x + p_w1_x;
    
    p_w0_x = p_x_w0*pw0/px;
    p_w1_x = p_x_w1*pw1/px;
    
    if (p_w0_x)>(p_w1_x)
        plot(xx(1),xx(2),'b*');hold on;
       
    else 
        plot(xx(1),xx(2),'r*');hold on;
        
    end
end
