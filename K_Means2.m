clear all;
close all;
clc;

% Load Dataset
x = iris_dataset;
x = x(3:4,:); %2x150

x1 = x(1,:);
x2 = x(2,:);

K = 2; %Number of Clusters

labels = randi(K,1,150); %1x150    %Each data point in x is assigned a label (1 or 2)

for i=1:10
    D = []; %To save sqeuclidean for each k
    C = [];
    
    for k=1:K
        label_index = find(labels==k);
        if ~isempty(label_index)
            cluster_mean = mean(x(:,label_index)');
            d = x-cluster_mean';
            
            %cityblock = sum(abs(d));
            sqeuclidean = sqrt(d(1,:).^2 + d(2,:).^2);
            
            D = [D;sqeuclidean];
            
            plot(cluster_mean(1),cluster_mean(2),'kh','LineWidth',1);hold on;
        end
    end
    
    [~,labels] = min(D);
    
    k1 = find(labels==1);
    k2 = find(labels==2);
    
    plot(x1(:,1:50),x2(:,1:50),'yo','LineWidth',1);hold on;
    plot(x1(:,51:150),x2(:,51:150),'go','LineWidth',1);hold on;
    plot(x1(:,k1),x2(:,k1),'r.','MarkerSize',10);hold on;
    plot(x1(:,k2),x2(:,k2),'b.','MarkerSize',10);hold on;
    
    
    hold off;
    drawnow;
    
    drawnow;
  
end
