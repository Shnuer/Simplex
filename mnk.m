
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
plot(x,y,'.')

hold on;

r=0;
z=0;

for a=0:200
    for b =0:200

        r = 0;
        for k=1:165
            r= r + sqrt((x(k)-a).^2+(y(k)-b).^2);
        end
        r = r/165;
        for t=0:pi/180:2*pi

            x_now=r*cos(t)+a;
            y_now=r*sin(t)+b; 
            e1=0;
            e2=0;
            for k=1:165
                e1 = e1 + (x(k)-x_now);
                e2 = e2 + (y(k)-y_now);
            end
        end

        if (z == 0) %
            e3_best = e3;
            z=1;

        end

        e3 = abs(e1)+abs(e2);

        if(e3 < e3_best)
            e3_best=e3;
            a_best = a;
            b_best = b;  
            r_best = r;
        end
    end
end

t = [0:pi/180:2*pi];

x_best=r_best*cos(t)+a_best;
y_best=r_best*sin(t)+b_best; 

plot(x_best,y_best,'-r')

hold on
