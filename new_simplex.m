
%Загружаем значения и обрезаем значения
x = x_value2;
y = y_value2;

x_new = [];
y_new = [];
for k=1:250
    if x(k)>0
        x_new=[x_new x(k)];
        y_new=[y_new y(k)]; 
    end
end
x = x_new;
y = y_new;
figure(3)

% y = (y - mean(y))/std(y)/2;
% x = (x - mean(x))/std(x)/2;
plot(x,y,'.')
hold on
start_point = 0;
start_point_r = 0;
%Задаем длину ребра и расчитываем каждую вершину тетраэдра

edge = 10;

a1 = start_point;
b1 = start_point;
r1 = start_point_r;

a2 = start_point;
b2 = start_point;
r2 = start_point_r + edge;

a3 = start_point;
b3 = start_point + sqrt((edge^2)-(edge/2)^2);
r3 = start_point_r + edge/2;

a4 = start_point + sqrt(2/3)*edge; % по определению высоты правильного тетраэдра
b4 = start_point + (sqrt((edge^2)-(edge/2)^2))/3; 
r4 = start_point_r + edge/2;


% флаг для первого значения ошибки
flag_first_value = 0

flag1 = 0;
flag2 = 0;
flag3 = 0;
flag4 = 0;

Error1 = 0;
Error2 = 0;
Error3 = 0;
Error4 = 0;

bad_value = 1;

Error = [0,0,0,0];
A = [a1,a2,a3,a4];
B = [b1,b2,b3,b4];
R = [r1,r2,r3,r4];

for i = 1:150
     

    
    for j = 1:4  
        k = abs(sqrt((x-A(j)).^2 + (y-B(j)).^2) - R(j));
        Error(j)=  sum(k);
    end
    
    Error
    
    [val, i_max_error] = max(Error);
    Error = [0,0,0,0];
    
    % рассчет ошибки для каждой вершины

        a_centre = (sum(A)-A(i_max_error))/3;
        b_centre = (sum(B)-B(i_max_error))/3;
        r_centre = (sum(R)-R(i_max_error))/3;

        A(i_max_error) = A(i_max_error) + 2 * (a_centre - A(i_max_error));
        B(i_max_error) = B(i_max_error) + 2 * (b_centre - B(i_max_error));
        R(i_max_error) = R(i_max_error) + 2 * (r_centre - R(i_max_error));
      
       
        i_max_error
    end
    


[value, index_min_value] = min(Error);

t = [0:pi/180:2*pi];

x_best=R(index_min_value)*cos(t)+A(index_min_value);
y_best=R(index_min_value)*sin(t)+B(index_min_value); 

figure(3)
plot(x_best,y_best,'-r')

hold on
