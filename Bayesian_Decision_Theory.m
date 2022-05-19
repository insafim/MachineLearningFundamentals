x = iris_dataset;

x0 = x(1,:);

ix0 = 1:50;
ix1 = 51:150;

m0 = mean(x0(ix0));
m1 = mean(x0(ix1));

s0 = std(x0(ix0));
s1 = std(x0(ix1));

xx = 0:0.01:10;
%likielihood
%(x|w0)
p_x0_w0 = (1/(sqrt(2*pi)*s0))*exp(-0.5*((xx-m0)/s0).^2)
%(x|w1)
p_x0_w1 = (1/(sqrt(2*pi)*s1))*exp(-0.5*((xx-m1)/s1).^2)

figure(1);
plot(xx,p_x0_w0,'b'); hold on;
plot(xx,p_x0_w1,'r');


%prior
pw0 = 1/3 ; pw1 = 1 - pw0;

%Evidence
px0 = p_x0_w0*pw0 + p_x0_w1*pw1;


%Posterior Probability
p_w0_x0 = (p_x0_w0*pw0)./px0;
p_w1_x0 = (p_x0_w1*pw1)./px0;

figure(2);
plot(xx,p_w0_x0,'b');hold on;
plot(xx,p_w1_x0,'r');
title('Univariate Posterior Probabilities (including evidence)')


p_w0_x0 = (p_x0_w0*pw0);
p_w1_x0 = (p_x0_w1*pw1);

figure(3);
plot(xx,p_w0_x0,'b');hold on;
plot(xx,p_w1_x0,'r');
title('Univariate Posterior Probabilities (excluding evidence)')
