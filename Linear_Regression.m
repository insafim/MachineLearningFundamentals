data = iris_dataset; %Load dataset

x0 = data(1,:); %Feature1
x1 = data(2,:); %Feature2

%Considering one feature
X = [x0',ones(150,1)];
Y = [ones(50,1);-ones(100,1)];
W = (inv(X'*X))*X'*Y; %Least Mean Square
Yhat = X*W;

Xref = -W(2)/W(1); %Decision Boundary

figure(1);
bar(Yhat);

%Considering 2 features
X2 = [x1',x0',ones(150,1)];
W2 = (inv(X2'*X2))*X2'*Y;
Yhat2 = X2*W2;
figure(2);
bar(Yhat2);


ix0 = 1:50; %w0
ix1 = 50:150; %]w0

w1 = W2(1);
w0 = W2(2);
b = W2(3);


figure(3);hold on 
plot(x0(1,ix0),x1(1,ix0),'ro');
plot(x0(1,ix1),x1(1,ix1),'bo');

%Yhat2 = w1x1 + w0x0 + b;
%Decision Boundary ----> Yhat2 = 0

x1 = (-w0*x0-b)/w1;
plot(x0,x1,'g-');


%Using 50% of the data for training
XX = [[x1(1:2:50)';x1(51:2:150)'] [x0(1:2:50)';x0(51:2:150)'] ones(75,1)];
YY = [ones(25,1);-ones(50,1)];
WW = (inv(XX'*XX))*XX'*YY;
YYhat = XX*WW;

figure(4);
bar(YYhat);