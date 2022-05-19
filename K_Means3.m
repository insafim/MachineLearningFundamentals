clear all;
close all;
clc;

load moon_shaped_data_mat     %label  (1x400 int64)
                              %x      (1x400 double)
                              %y      (1x400 double)
                              
x1 = x;
x2 = y;

X = [x1;x2];

K = 2; %Number of Clusters

labels = randi(K,1,400); %1x400    %Each data point is assigned a label (1 or 2)

for i=1:10
    D = []; %To save sqeuclidean for each k
    C = [];
    
    for k=1:K
        label_index = find(labels==k);
        if ~isempty(label_index)
            cluster_mean = mean(X(:,label_index)');
            d = X-cluster_mean';
            
            cityblock = sum(abs(d));
            %sqeuclidean = d(1,:).^2 + d(2,:).^2;
            
            D = [D;cityblock];
            %D = [D;sqeuclidean];
            
            plot(cluster_mean(1),cluster_mean(2),'g*','LineWidth',4);hold on;
        end
    end
    
    [~,labels] = min(D);
    
    k1 = find(labels==1);
    k2 = find(labels==2);
    
    plot(x1,x2,'yo');hold on;
    plot(x1(:,k1),x2(:,k1),'r.','MarkerSize',10);hold on;
    plot(x1(:,k2),x2(:,k2),'b.','MarkerSize',10);hold on;
    
    
    hold off;
    drawnow;
    
    drawnow;
  
end
