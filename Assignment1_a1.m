x = iris_dataset; %Load dataset

x1 = x(1,:); %Feature1
x2 = x(2,:); %Feature2
x3 = x(3,:); %Feature3
x4 = x(4,:); %Feature4

%---Univariate---

%---Linear Regression---

%---FEATURE 1---
%Considering 100% of feature 1
X1 = [x1',ones(150,1)];
Y1 = [-ones(100,1); ones(50,1)];
W1 = (inv(X1'*X1))*X1'*Y1; %Least Mean Square
Yhat1 = X1*W1;
Xref1 = -W1(2)/W1(1); %Decision Boundary
figure(1);
bar(Yhat1);
title('Univariate-Linear Regression Classifier-100% Feature 1')

%Considering 50% of feature 1
X1 = [x1(1:2:150)',ones(75,1)];
Y1 = [-ones(50,1); ones(25,1)];
W1 = (inv(X1'*X1))*X1'*Y1; %Least Mean Square
X1 = [x1',ones(150,1)];
Yhat1 = X1*W1;
Xref1 = -W1(2)/W1(1); %Decision Boundary
figure(2);
bar(Yhat1);
title('Univariate-Linear Regression Classifier-50% Feature 1')


%---FEATURE 2---
%Considering 100% of feature 2
X2 = [x2',ones(150,1)];
Y2 = [-ones(100,1); ones(50,1)];
W2 = (inv(X2'*X2))*X2'*Y2; %Least Mean Square
Yhat2 = X2*W2;
Xref2 = -W2(2)/W2(1); %Decision Boundary
figure(3);
bar(Yhat2);
title('Univariate-Linear Regression Classifier-100% Feature 2')

%Considering 50% of feature 2
X2 = [x2(1:2:150)',ones(75,1)];
Y2 = [-ones(50,1); ones(25,1)];
W2 = (inv(X2'*X2))*X2'*Y2; %Least Mean Square
X2 = [x2',ones(150,1)];
Yhat2 = X2*W2;
Xref2 = -W2(2)/W2(1); %Decision Boundary
figure(4);
bar(Yhat2);
title('Univariate-Linear Regression Classifier-50% Feature 2')



%---FEATURE 3---
%Considering 100% of feature 2
X3 = [x3',ones(150,1)];
Y3 = [-ones(100,1); ones(50,1)];
W3 = (inv(X3'*X3))*X3'*Y3; %Least Mean Square
Yhat3 = X3*W3;
Xref3 = -W3(2)/W3(1); %Decision Boundary
figure(5);
bar(Yhat3);
title('Univariate-Linear Regression Classifier-100% Feature 3')

%Considering 50% of feature 2
X3 = [x3(1:2:150)',ones(75,1)];
Y3 = [-ones(50,1); ones(25,1)];
W3 = (inv(X3'*X3))*X3'*Y3; %Least Mean Square
X3 = [x3',ones(150,1)];
Yhat3 = X3*W3;
Xref3 = -W3(2)/W3(1); %Decision Boundary
figure(6);
bar(Yhat3);
title('Univariate-Linear Regression Classifier-50% Feature 3')



%---FEATURE 4---
%Considering 100% of feature 2
X4 = [x4',ones(150,1)];
Y4 = [-ones(100,1); ones(50,1)];
W4 = (inv(X4'*X4))*X4'*Y4; %Least Mean Square
Yhat4 = X4*W4;
Xref4 = -W4(2)/W4(1); %Decision Boundary
figure(7);
bar(Yhat4);
title('Univariate-Linear Regression Classifier-100% Feature 4')

%Considering 50% of feature 2
X4 = [x4(1:2:150)',ones(75,1)];
Y4 = [-ones(50,1); ones(25,1)];
W4 = (inv(X4'*X4))*X4'*Y4; %Least Mean Square
X4 = [x4',ones(150,1)];
Yhat4 = X4*W4;
Xref4 = -W4(2)/W4(1); %Decision Boundary
figure(8);
bar(Yhat4);
title('Univariate-Linear Regression Classifier-50% Feature 4')
