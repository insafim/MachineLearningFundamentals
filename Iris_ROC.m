x = iris_dataset;
s = size(x)

figure(1);
plot(x'); %plots the rows of x versus their index 
          %4 rows corresponding to 4 features

%----Feature x0----
figure(2);
subplot(211);hist(x(1,1:50)); %w0
subplot(212);hist(x(1,51:150)); %nw0

%ROC
c = 1;
for i = 4:0.01:8
    a0(c)= sum(x(1,1:50)<i)/50;
    b0(c) = sum(x(1,51:150)<i)/100;
    c=c+1;
end
figure(3);
plot(b0,a0,'r.-');



%----Feature x1----
figure(4);
subplot(211);hist(x(2,1:50)); %w0
subplot(212);hist(x(2,51:150)); %nw0

%ROC
c = 1;
for i = 1:0.01:5
    a1(c)= sum(x(2,1:50)<i)/50;
    b1(c) = sum(x(2,51:150)<i)/100;
    c=c+1;
end
figure(5);
plot(b1,a1,'g.-');

%----Feature x2----
figure(6);
subplot(211);hist(x(3,1:50)); %w0
subplot(212);hist(x(3,51:150)); %nw0

%ROC
c = 1;
for i = 0:0.1:7
    a2(c)= sum(x(3,1:50)<i)/50;
    b2(c) = sum(x(3,51:150)<i)/100;
    c=c+1;
end
figure(7);
plot(b2,a2,'b.-');


%----Feature x3----
figure(8);
subplot(211);hist(x(4,1:50)); %w0
subplot(212);hist(x(4,51:150)); %nw0

%ROC
c = 1;
for i = 0:0.01:3
    a3(c)= sum(x(4,1:50)<i)/50;
    b3(c) = sum(x(4,51:150)<i)/100;
    c=c+1;
end
figure(9);
plot(b3,a3,'y.-');

a4= sum(x(1,1:50)<5.4366)/50;  %5.4366 is from linear regression
b4= sum(x(1,51:150)<5.4366)/100;

figure(10); hold on
plot(b4,a4,'ko');
plot(b0,a0,'r.-');
plot(b1,a1,'g.-');
plot(b2,a2,'b.-');
plot(b3,a3,'y.-');

