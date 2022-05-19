load yale_32x32 %165 (32x32) images of 15 people(11 images of each person) 

x = fea'; %1024x165  1024=32x32  165=11x15

m = mean(x')'; %mean of each pixel

xmr = x-m;
s = cov(x');
n = 30; %No of eigenvalues
[V,D] = eigs(s,n); %Gives n eigenvalues
y = V'*xmr; %Mapping to the Principal Axes(n in our case)


figure(2);
plot(y(1,23:165),y(2,23:165),'go','LineWidth',2);hold on;
plot(y(1,1:11),y(2,1:11),'ro','LineWidth',2);hold on;
plot(y(1,12:23),y(2,12:23),'bo','LineWidth',2);


figure(3);
plot3(y(1,23:165),y(2,23:165),y(3,23:165),'go','LineWidth',2);hold on;
plot3(y(1,1:11),y(2,1:11),y(3,1:11),'ro','LineWidth',2);hold on;
plot3(y(1,12:23),y(2,12:23),y(3,12:23),'bo','LineWidth',2);


%Reconstructing image 01 of person 01
y1 = y(:,1);
xnew1 = m + V*y1;
figure(7);
imshow(reshape(xnew1,32,32),[]);

figure(10);
subplot(1,5,1);imshow(reshape(x(:,1),32,32),[]); %Display image 01 of person 01
subplot(1,5,2);imshow(reshape(x(:,2),32,32),[]);
subplot(1,5,3);imshow(reshape(x(:,3),32,32),[]);
subplot(1,5,4);imshow(reshape(x(:,4),32,32),[]);
subplot(1,5,5);imshow(reshape(x(:,5),32,32),[]);

figure(8);
subplot(1,5,1);imshow(reshape(x(:,12),32,32),[]); %Display image 01 of person 02
subplot(1,5,2);imshow(reshape(x(:,13),32,32),[]);
subplot(1,5,3);imshow(reshape(x(:,14),32,32),[]);
subplot(1,5,4);imshow(reshape(x(:,15),32,32),[]);
subplot(1,5,5);imshow(reshape(x(:,16),32,32),[]);

figure(9);
subplot(1,5,1);imshow(reshape(x(:,23),32,32),[]); %Display image 01 of person 03
subplot(1,5,2);imshow(reshape(x(:,24),32,32),[]);
subplot(1,5,3);imshow(reshape(x(:,25),32,32),[]);
subplot(1,5,4);imshow(reshape(x(:,26),32,32),[]);
subplot(1,5,5);imshow(reshape(x(:,27),32,32),[]);


figure(4);
%Display eigenfcaes
subplot(1,6,1);imshow(reshape(V(:,1),32,32),[]); 
subplot(1,6,2);imshow(reshape(V(:,2),32,32),[]);
subplot(1,6,3);imshow(reshape(V(:,3),32,32),[]);
subplot(1,6,4);imshow(reshape(V(:,4),32,32),[]);
subplot(1,6,5);imshow(reshape(V(:,5),32,32),[]);
subplot(1,6,6);imshow(reshape(V(:,6),32,32),[]);

figure(10);
subplot(5,5,1);imshow(reshape(V(:,1),32,32),[]); 
subplot(5,5,2);imshow(reshape(V(:,2),32,32),[]);
subplot(5,5,3);imshow(reshape(V(:,3),32,32),[]);
subplot(5,5,4);imshow(reshape(V(:,4),32,32),[]);
subplot(5,5,5);imshow(reshape(V(:,5),32,32),[]);
subplot(5,5,6);imshow(reshape(V(:,6),32,32),[]);
subplot(5,5,7);imshow(reshape(V(:,7),32,32),[]); 
subplot(5,5,8);imshow(reshape(V(:,8),32,32),[]);
subplot(5,5,9);imshow(reshape(V(:,9),32,32),[]);
subplot(5,5,10);imshow(reshape(V(:,10),32,32),[]);
subplot(5,5,11);imshow(reshape(V(:,11),32,32),[]);
subplot(5,5,12);imshow(reshape(V(:,12),32,32),[]);
subplot(5,5,13);imshow(reshape(V(:,13),32,32),[]); 
subplot(5,5,14);imshow(reshape(V(:,14),32,32),[]);
subplot(5,5,15);imshow(reshape(V(:,15),32,32),[]);
subplot(5,5,16);imshow(reshape(V(:,16),32,32),[]);
subplot(5,5,17);imshow(reshape(V(:,17),32,32),[]);
subplot(5,5,18);imshow(reshape(V(:,18),32,32),[]);
subplot(5,5,19);imshow(reshape(V(:,19),32,32),[]);
subplot(5,5,20);imshow(reshape(V(:,20),32,32),[]);
subplot(5,5,21);imshow(reshape(V(:,21),32,32),[]);
subplot(5,5,22);imshow(reshape(V(:,22),32,32),[]);
subplot(5,5,23);imshow(reshape(V(:,23),32,32),[]);
subplot(5,5,24);imshow(reshape(V(:,24),32,32),[]);
subplot(5,5,25);imshow(reshape(V(:,25),32,32),[]);


