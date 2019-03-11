buffer_x=[];
buffer_y=[];
buffer_z=[];

f = char(45)
d = double(f)
clear;
point = fopen('txt.txt','r');
%B = fread(point,1,'int8');
t = 0;
C = fgets(point);
k = 1;
n = 1;

plot3(21,40,603)
hold on
plot3(110,-459,180)
plot3(102,-462,173)
plot3(128,-456,173)
plot3(-3,-471,108)
plot3(134,-304,-189)
plot3(96,-426,175)
plot3(-136,-451,-51)
xlabel('x')
ylabel('y')
zlabel('z')
    

%disp(B);
disp(C);


fclose(point);