x = iris_dataset;

x0 = x(1,:);

ix0 = 1:50;
ix1 = 51:150;

m0 = mean(x0(ix0));
m1 = mean(x0(ix1));

s0 = std(x0(ix0));
s1 = std(x0(ix1));


figure(5);
for k=1:150
    p_x0_w0 = (1/(sqrt(2*pi)*s0))*exp(-0.5*((x0(:,k)-m0)/s0).^2);
    p_x0_w1 = (1/(sqrt(2*pi)*s1))*exp(-0.5*((x0(:,k)-m1)/s1).^2);

    plot(x0(:,k),p_x0_w0,'b*');hold on;
    plot(x0(:,k),p_x0_w1,'r*');
end