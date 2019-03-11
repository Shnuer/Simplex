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

plot_simpl(a1,b1,r1,a2,b2,r2,a3,b3,r3,a4,b4,r4)


 a_centre = (a2+a3+a1)/3;
 b_centre = (b2+b3+b1)/3;
 r_centre = (r2+r3+r1)/3;
        
 a_vector = a_centre - a4;
 b_vector = b_centre - b4;
 r_vector = r_centre - r4;
        
 a4 = a4 + 2 * a_vector;
 b4 = b4 + 2 * b_vector;
 r4 = r4 + 2 * r_vector;  
 
plot_simpl(a1,b1,r1,a2,b2,r2,a3,b3,r3,a4,b4,r4)