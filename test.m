
start_point = 0;
edge = 1;

a1 = start_point;
b1 = start_point;
r1 = start_point;

a2 = start_point;
b2 = start_point;
r2 = start_point + edge;

a3 = start_point;
b3 = start_point + sqrt((edge^2)-(edge/2)^2);
r3 = start_point + edge/2;

a4 = start_point + sqrt(2/3)*edge; % по определению высоты правильного тетраэдра
b4 = start_point + (sqrt((edge^2)-(edge/2)^2))/3; % почему делим на три? - хороший вопрос...
r4 = start_point + edge/2;

len1 = sqrt((a1-a2)^2+(b1-b2)^2+(r1-r2)^2)
len2 = sqrt((a1-a3)^2+(b1-b3)^2+(r1-r3)^2)
len3 = sqrt((a1-a4)^2+(b1-b4)^2+(r1-r4)^2)
len4 = sqrt((a2-a3)^2+(b2-b3)^2+(r2-r3)^2)
len5 = sqrt((a2-a4)^2+(b2-b4)^2+(r2-r4)^2)
len6 = sqrt((a3-a4)^2+(b3-b4)^2+(r3-r4)^2)

A = [start_point, start_point, start_point];
B = [start_point, start_point, start_point + edge];
C = [start_point, start_point + sqrt((edge^2)-(edge/2)^2), start_point + edge/2];
D = [start_point + sqrt((edge^2)-(edge/2)^2), start_point + (sqrt((edge^2)-(edge/2)^2))/2, start_point + edge/2];

X = [a1; a2; a3; a4];
Y = [b1; b2; b3 ;b4];
Z = [r1; r2; r3; r4];



x_prev1 = [X(1);X(2)];
x_prev2 = [X(1);X(3)];
x_prev3 = [X(1);X(4)];
x_prev4 = [X(2);X(3)];
x_prev5 = [X(2);X(4)];
x_prev6 = [X(3);X(4)];

y_prev1 = [Y(1);Y(2)];
y_prev2 = [Y(1);Y(3)];
y_prev3 = [Y(1);Y(4)];
y_prev4 = [Y(2);Y(3)];
y_prev5 = [Y(2);Y(4)];
y_prev6 = [Y(3);Y(4)];

z_prev1 = [Z(1);Z(2)];
z_prev2 = [Z(1);Z(3)];
z_prev3 = [Z(1);Z(4)];
z_prev4 = [Z(2);Z(3)];
z_prev5 = [Z(2);Z(4)];
z_prev6 = [Z(3);Z(4)];

[X1, Y1, Z1] = meshgrid(X,Y,Z)
figure('Color','w')
[X1, Y1, Z1] = meshgrid(X,Y,Z)

xlabel('x'); ylabel('y'); zlabel('z')

plot3(X,Y,Z)

plot3(x_prev1,y_prev1,z_prev1)
hold on;
plot3(x_prev2,y_prev2,z_prev2)
hold on;
plot3(x_prev3,y_prev3,z_prev3)
hold on;
plot3(x_prev4,y_prev4,z_prev4)
hold on;
plot3(x_prev5,y_prev5,z_prev5)
hold on;
plot3(x_prev6,y_prev6,z_prev6)
hold on;
xlabel('a'); ylabel('b'); zlabel('r')


 a_centre = (a2+a3+a1)/3;
 b_centre = (b2+b3+b1)/3;
 r_centre = (r2+r3+r1)/3;
        
 a_vector = a_centre - a4;
 b_vector = b_centre - b4;
 r_vector = r_centre - r4;
        
 a4 = a4 + 2 * a_vector;
 b4 = b4 + 2 * b_vector;
 r4 = r4 + 2 * r_vector;  
 
len1 = sqrt((a1-a2)^2+(b1-b2)^2+(r1-r2)^2)
len2 = sqrt((a1-a3)^2+(b1-b3)^2+(r1-r3)^2)
len3 = sqrt((a1-a4)^2+(b1-b4)^2+(r1-r4)^2)
len4 = sqrt((a2-a3)^2+(b2-b3)^2+(r2-r3)^2)
len5 = sqrt((a2-a4)^2+(b2-b4)^2+(r2-r4)^2)
len6 = sqrt((a3-a4)^2+(b3-b4)^2+(r3-r4)^2)


X = [a1; a2; a3; a4];
Y = [b1; b2; b3 ;b4];
Z = [r1; r2; r3; r4];



x_prev1 = [X(1);X(2)];
x_prev2 = [X(1);X(3)];
x_prev3 = [X(1);X(4)];
x_prev4 = [X(2);X(3)];
x_prev5 = [X(2);X(4)];
x_prev6 = [X(3);X(4)];

y_prev1 = [Y(1);Y(2)];
y_prev2 = [Y(1);Y(3)];
y_prev3 = [Y(1);Y(4)];
y_prev4 = [Y(2);Y(3)];
y_prev5 = [Y(2);Y(4)];
y_prev6 = [Y(3);Y(4)];

z_prev1 = [Z(1);Z(2)];
z_prev2 = [Z(1);Z(3)];
z_prev3 = [Z(1);Z(4)];
z_prev4 = [Z(2);Z(3)];
z_prev5 = [Z(2);Z(4)];
z_prev6 = [Z(3);Z(4)];

[X1, Y1, Z1] = meshgrid(X,Y,Z)

[X1, Y1, Z1] = meshgrid(X,Y,Z)

xlabel('x'); ylabel('y'); zlabel('z')

plot3(X,Y,Z)

plot3(x_prev1,y_prev1,z_prev1)
hold on;
plot3(x_prev2,y_prev2,z_prev2)
hold on;
plot3(x_prev3,y_prev3,z_prev3)
hold on;
plot3(x_prev4,y_prev4,z_prev4)
hold on;
plot3(x_prev5,y_prev5,z_prev5)
hold on;
plot3(x_prev6,y_prev6,z_prev6)
hold on;
xlabel('a'); ylabel('b'); zlabel('r')


plot3(a4_new,b4_new,r4_new,'.')
hold on;

plot_simpl(a1,b1,r1,a2,b2,r2,a3,b3,r3,a4,b4,r4)


