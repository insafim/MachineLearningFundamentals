v1 = [7;0];
v2 = [2;4];

magv1 = v1'*v1;
magv2 = v2'*v2;


plotv(v1,'g');hold on;
plotv(v2,'r');

u1 = v1/norm(v1);

v2on1 = (dot(v2,u1))*u1; %v2on1 = ((v1'*v2)/(norm(v1))^2)*v1;

plotv(v2on1,'b');