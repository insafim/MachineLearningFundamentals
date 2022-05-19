function a = accuracy(P)
    count = 0;
    for k=1:100
        if P(k)<0
            count = count + 1;
        end
    end
    for k=101:150
        if P(k)>0
            count = count + 1;
        end
    end
    a = (count/150)*100;
return
