x = iris_dataset;

x1 = x(1,:); %Feature1
x2 = x(2,:); %Feature2
x3 = x(3,:); %Feature3
x4 = x(4,:); %Feature4

ix0 = 1:100; %not class 3
ix1 = 101:150; %class 3

%prior
pw0 = 2/3 ; pw1 = 1 - pw0;


%Feature 1
m0 = mean(x1(ix0));
m1 = mean(x1(ix1));

s0 = std(x1(ix0));
s1 = std(x1(ix1));

P1 = [];
for k=1:150
    p_x1_w0 = (1/(sqrt(2*pi)*s0))*exp(-0.5*((x1(:,k)-m0)/s0).^2);
    p_x1_w1 = (1/(sqrt(2*pi)*s1))*exp(-0.5*((x1(:,k)-m1)/s1).^2);
    
    p_w0_x1 = p_x1_w0*pw0;
    p_w1_x1 = p_x1_w1*pw1;
    
    px = p_w0_x1 + p_w1_x1;
    
    p_w0_x1 = p_x1_w0*pw0/px;
    p_w1_x1 = p_x1_w1*pw1/px;
    
    P1 = [P1 p_w1_x1-p_w0_x1];
end

figure(1);
bar(P1);
title('Bayesian Classifier Considering Feature 1');



%Feature 2
m0 = mean(x2(ix0));
m1 = mean(x2(ix1));

s0 = std(x2(ix0));
s1 = std(x2(ix1));

P2 = [];
for k=1:150
    p_x2_w0 = (1/(sqrt(2*pi)*s0))*exp(-0.5*((x2(:,k)-m0)/s0).^2);
    p_x2_w1 = (1/(sqrt(2*pi)*s1))*exp(-0.5*((x2(:,k)-m1)/s1).^2);
    
    p_w0_x2 = p_x2_w0*pw0;
    p_w1_x2 = p_x2_w1*pw1;
    
    px = p_w0_x2 + p_w1_x2;
    
    p_w0_x2 = p_x2_w0*pw0/px;
    p_w1_x2 = p_x2_w1*pw1/px;
    
    P2 = [P2 p_w1_x2-p_w0_x2];
end

figure(2);
bar(P2);
title('Bayesian Classifier Considering Feature 2');


%Feature 3
m0 = mean(x3(ix0));
m1 = mean(x3(ix1));

s0 = std(x3(ix0));
s1 = std(x3(ix1));

P3 = [];
for k=1:150
    p_x3_w0 = (1/(sqrt(2*pi)*s0))*exp(-0.5*((x3(:,k)-m0)/s0).^2);
    p_x3_w1 = (1/(sqrt(2*pi)*s1))*exp(-0.5*((x3(:,k)-m1)/s1).^2);
    
    p_w0_x3 = p_x3_w0*pw0;
    p_w1_x3 = p_x3_w1*pw1;
    
    px = p_w0_x3 + p_w1_x3;
    
    p_w0_x3 = p_x3_w0*pw0/px;
    p_w1_x3 = p_x3_w1*pw1/px;
    
    P3 = [P3 p_w1_x3-p_w0_x3];
end

figure(3);
bar(P3);
title('Bayesian Classifier Considering Feature 3');




%Feature 4
m0 = mean(x4(ix0));
m1 = mean(x4(ix1));

s0 = std(x4(ix0));
s1 = std(x4(ix1));

P4 = [];
for k=1:150
    p_x4_w0 = (1/(sqrt(2*pi)*s0))*exp(-0.5*((x4(:,k)-m0)/s0).^2);
    p_x4_w1 = (1/(sqrt(2*pi)*s1))*exp(-0.5*((x4(:,k)-m1)/s1).^2);
    
    p_w0_x4 = p_x4_w0*pw0;
    p_w1_x4 = p_x4_w1*pw1;
    
    px = p_w0_x4 + p_w1_x4;
    
    p_w0_x4 = p_x4_w0*pw0/px;
    p_w1_x4 = p_x4_w1*pw1/px;
    
    P4 = [P4 p_w1_x4-p_w0_x4];
end

figure(4);
bar(P);
title('Bayesian Classifier Considering Feature 4');
