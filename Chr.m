delete(instrfind)
s = serial('/dev/ttyACM1'); %
%fclose(s);
fopen(s);
C = [];
x_value3 = [];
y_value3 = [];
for n=1:250
    
    a = fread(s, 1)
    if a =='#'
        x_value3(n) = fread(s, 1, 'int16')
        y_value3(n) = fread(s, 1, 'int16')
        
        display(x_value3)
        display(y_value3)
    end
    
end
plot(x_value3,y_value3,'.');
fclose(s);
delete(s);
clear s;
    