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

c1 = [];
p = X(:,1);
c1 = [c1,p];
run = 1;
b = 0;
l = 0.174;

while(run)

for i=1:400
    h = p-X(:,i);    
    d = sqrt(h(1)^2 + h(2)^2); 
    v = X(:,i);
    u = check(c1,v);
    if d<l && u == 0 && d>0
        c1 = [c1,v];
    end
end
b = b+1; 
bb = min(b,length(c1));
p = c1(:,bb);


if b == 400
    run = 0;
end
end

plot(c1(1,:),c1(2,:),'r.','MarkerSize',10);hold on;


%plot(X(1,400),X(2,400),'bo');


c2 = [];
p = X(:,400);
c2 = [c2,p];
run = 1;
b = 0;
l = 0.174;

while(run)

for i=1:400
    h = p-X(:,i);    
    d = sqrt(h(1)^2 + h(2)^2); 
    v = X(:,i);
    u = check(c2,v);
    if d<l && u == 0 && d>0
        c2 = [c2,v];
    end
end
b = b+1; 
bb = min(b,length(c2));
p = c2(:,bb);


if b == 400
    run = 0;
end
end

plot(c2(1,:),c2(2,:),'b.','MarkerSize',10);hold on;



function u = check(c1,v)
    u = 0;
    g = length(c1);
    for m=1:g-1
    f = c1(:,m);
    if f == v
        u = u+1;
    end
    end
end
