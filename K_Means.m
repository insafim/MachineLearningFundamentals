clear all;
close all;
clc

% Load Dataset
x = iris_dataset;
x = x(3:4,:);
cls = [ones(1,50) 2*ones(1,50) 3*ones(1,50)];
gscatter(x(1,:),x(2,:),cls);hold on;

M = size(x,1); %Number of features
N = size(x,2); %Number of instances

%Define number of clusters
k = 2;

%Randomly assign feature points to k clusters
ix = randi(k,1,N);

for n=1:5
    %Find the centroid of each cluster
    C = [];
    D = [];
    cls = [ones(1,50) 2*ones(1,50) 3*ones(1,50)];
    gscatter(x(1,:),x(2,:),cls);hold on;
    
    for i=1:k
        ixd=find(ix==i);
        if ~isempty(ixd)
            mC = mean(x(:,ixd)');
            d = x-mC';
            d = sqrt(d(1,:).^2+d(2,:).^2);
            D = [D;d];
            C = [C,mC];
            plot(mC(1),mC(2),'ko','LineWidth',4);hold on;
        end
    end

    [mn,ix] = min(D);
    hold off;
    drawnow;
    %pause;
end
        
        
        
    