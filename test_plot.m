a=4;
b=2;
c=3;
u = (0:0.05*pi:2*pi)';
v = [0:0.05*pi:2*pi];
X = a*sin(u)*cos(v);
Y = b*sin(u)*sin(v);
Z = c*cos(u)*ones(size(v));
figure('Color','w')
%hS=mesh(X,Y,Z);
xlabel('x'); ylabel('y'); zlabel('z')