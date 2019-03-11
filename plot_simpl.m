function plot_simpl(A,B,R)
figure(2);
X = A;
Y = B;
Z = R;
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
end