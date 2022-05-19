load yale_32x32 %165 (32x32) images of 15 people(11 images of each person) 

x = fea'; %1024x165  1024=32x32  165=11x15

x1 = x(:,1);
%figure(1);
%imshow(reshape(x1,32,32),[]);

n = 1024;

%FFT
f = fft(x1);

% figure(2);
% plot(abs(f),'LineWidth',2); hold on;

%n = 100;
f1 = [f(1:n);zeros(1024-n,1)];
% plot(abs(f1),'LineWidth',2);

% figure(3);
% fx1 = ifft(f1);
% imshow(reshape(fx1,32,32),[]);


% %FFT2
% f = fft2(x1);
% 
% figure(4);
% plot(abs(f),'LineWidth',2); hold on;
% 
% %n = 100;
% f1 = [f(1:n);zeros(1024-n,1)];
% plot(abs(f1),'LineWidth',2);
% 
% figure(5);
% fx1 = ifft2(f1);
% imshow(reshape(fx1,32,32),[]);



%DCT
g = dct(x1);

% figure(6);
% plot(g,'LineWidth',2); hold on;

%n = 300;
g1 = [g(1:n);zeros(1024-n,1)];
% plot(g1,'LineWidth',2);

figure(7);
gx1 = idct(g1);
imshow(reshape(gx1,32,32),[]);
