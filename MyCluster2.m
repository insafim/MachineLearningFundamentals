clear all;
close all;
clc;

load moon_shaped_data_mat     %label  (1x400 int64)
                              %x      (1x400 double)
                              %y      (1x400 double)
                              
x1 = x;
x2 = y;

X = [x1;x2];

plot(x1,x2,'yo');hold on;

lbl = zeros(1,400); 

lmax = 3.31/10; %3.3041

l = 0.1;

p = X(:,1);


c1 = [];

lbl = zeros(1,400); 

lmax = 3.31/10; %3.3041

l = 1;

c1 = [];
p1 = X(:,1);
c1 = [c1,p1];

p = X(:,1);
    
for i=1:400

h = p-X(:,i);    
d = sqrt(h(1)^2 + h(2)^2);        
if d<l
c1 = [c1,X(:,i)];
end

p = c1(:,i);

p1 = size(c1,2);
if p1==200
break
end
        
end


plot(c1(1,:),c1(2,:),'r.','MarkerSize',10);hold on;




