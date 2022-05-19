load yale_32x32 %165 (32x32) images of 15 people(11 images of each person) 

x = fea'; %1024x165  1024=32x32  165=11x15

figure(1);
subplot(1,5,1);imshow(reshape(x(:,1),32,32),[]); %Display image 01 of person 01


p = 1; %Person

ix1 = (p-1)*11+1:p*11;
ix0 = [1:(p-1)*11 p*11+1:165];

m = mean(x')'; %mean of each pixel

xmr = x-m;
s = cov(x');
n = 30; %No of eigenvalues
[V,D] = eigs(s,n); %Gives n eigenvalues
y = V'*xmr; %Mapping to the Principal Axes(n in our case)

figure(2);
plot(y(1,ix1),y(2,ix1),'ro','LineWidth',3);hold on;
plot(y(1,ix0),y(2,ix0),'bo','LineWidth',3);

%{
[V2,D2] = eig(s);
V2 = fliplr(V2);
y2 = V2'*xmr;

figure(2);
plot(y2(1,ix1),y2(2,ix1),'ro','LineWidth',3);hold on;
plot(y2(1,ix0),y2(2,ix0),'bo','LineWidth',3);

figure(4);
bar(diag(D2)); %This will not work

figure(6); 
imshow(reshape(V2(:,1),32,32),[]);
%}

figure(3);
bar(diag(D));

%figure(5);
%imshow(reshape(y(:,1),32,32),[]);


%New Face
Vnew = m+2*V(:,1)+1.5*V(:,2)+6*V(:,3)+4*V(:,4)+3*V(:,5)+V(:,6);
figure(6);
imshow(reshape(Vnew,32,32),[]); %Display new face


%Reconstructing image 01 of person 01
y1 = y(:,1);
xnew1 = m + V*y1;
figure(7);
imshow(reshape(xnew1,32,32),[]);

