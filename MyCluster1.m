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

min_d = 10;
min_array = [];

% for i=1:400
%     for j=i+1:400
%         d = X(:,i)-X(:,j);    
%         sqeuclidean = sqrt(d(1)^2 + d(2)^2);
%         min_array = [min_array,sqeuclidean];
%         if sqeuclidean<min_d
%             min_d = sqeuclidean;
%         end
%     end
% end
% 
% minnn = min(min_array);

c1 = [];
c2 = [];


% for l = 1:0.01:20
%     for i=1:400
%         for j=i+1:400
%             c1 = [c1,X(:,i)];
%             h = X(:,i)-X(:,j);    
%             d = sqrt(h(1)^2 + h(2)^2);
%             if d<l
%                 c1 = [c1,X(:,j)];
%             end
%         end
%     end
% end



% for l = 0:0.01:5
%     c1 = [];
%     for i=1:400
%         h = X(:,1)-X(:,i);    
%         d = sqrt(h(1)^2 + h(2)^2);
%         if d<l
%             c1 = [c1,X(:,i)];
%         end
%     end
%     p1 = size(c1,2);
%     if p1==150
%         break
%     end
% end
% 
% display(l);
% plot(c1(1,:),c1(2,:),'r.','MarkerSize',10);hold on;

lbl = zeros(1,400); 

lmax = 3.31/10; %3.3041

for l = 0:0.01:lmax
    
    for i=1:400
        h = X(:,1)-X(:,i);    
        d = sqrt(h(1)^2 + h(2)^2);
        if d<l
            c1 = [c1,X(:,i)];
        end
    end
    p1 = size(c1,2);
    if p1==400
        break
    end
end


%plot(c1(1,:),c1(2,:),'r.','MarkerSize',10);hold on;







