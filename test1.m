run = 1;

while(run)
    
    run = 0;
end

c = [1,2,3,4];

%   k = ismember(c,5) ~= 1

k = sum(c==4)>0
if k==1
    c = [c,1]
end