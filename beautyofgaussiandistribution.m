clc
clear all
close all
warning off
N=10000;
x=[randn(N,1) 0.2*randn(N,1)];
figure('WindowState','maximized');
pause(0.5);
for i=1:0.1:10
    th=pi/4+i;
    R1=[cos(th) -sin(th);sin(th) cos(th)];
    y=x*R1;
    h=plot(y(:,1),y(:,2),'.');
    pause(0.08);
    hold on;
    axis([-5 5 -5 5]);
    axis equal;
end
for i=1:10:10000
    plot(y(i,1),y(i,2),'.');
end
