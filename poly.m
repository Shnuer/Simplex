
x = x_value2;
y = y_value2;

x_new = []
y_new = []
for k=1:250
    if x(k)>0
        x_new=[x_new x(k)];
        y_new=[y_new y(k)]; 
    end
end
x = x_new;
y = y_new;
plot(x,y,'.')

hold on;

x0=mean(x);
y0=mean(y);
r=0;



for k=1:165
    r= r + sqrt((x(k)-x0).^2+(y(k)-y0).^2);
end

r = r/165;
plot(x0,y0,'.')

t = [0:pi/180:2*pi];

x7=r*cos(t)+x0;
y7=r*sin(t)+y0; 

plot(x7,y7,'-r')


hold on
