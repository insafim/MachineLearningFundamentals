load PD

A = A(:,:); %1000x20 20-Events each event has 1000 Features

figure(1);
plot(A(:,1:5));

mA = mean(A')';

Amr = A-mA;

sA = cov(A');

[VA,DA] = eigs(sA,20);

y = VA'*Amr;

figure(2);
plot(y(1,:),y(2,:),'ro','LineWidth',3);


figure(3);
bar(diag(DA));


%figure(4);
%plot(VA(:,1));hold on
%plot(VA(:,2));


figure(5);
plot(y(:,1:5));