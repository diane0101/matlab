clc
clear all
close all
figure;
pause(0.01);
x1=50;
a=pi/5;
u=0;
r=5;
g=0;
fill([-5 -5 5 5],[-5 5 5 -5],'k');
pause(0.01);
hold on;
m1=[0 pi/3];
m2=[pi/3 2*pi/3];
m3=[2*pi/3 pi];
m4=[pi 4*pi/3];
m5=[4*pi/3 5*pi/3];
m6=[5*pi/3 0];
k=0;
for i=1:x1
    if(r>0)
 t=m1+u*a;
x=r*cos(t);
y=r*sin(t);
plot(x,y,'r');
hold on;
 t=m2+u*a;
x=r*cos(t);
y=r*sin(t);
plot(x,y,'color',[0.9100    0.4100    0.1700]);
hold on;
 t=m3+u*a;
x=r*cos(t);
y=r*sin(t);
plot(x,y,'y');
hold on;
 t=m4+u*a;
x=r*cos(t);
y=r*sin(t);
plot(x,y,'g');
hold on;
 t=m5+u*a;
x=r*cos(t);
y=r*sin(t);
plot(x,y,'b');
hold on;
 t=m6+u*a;
x=r*cos(t);
y=r*sin(t);
plot(x,y,'m');
hold on;
axis square;
hold on;
u=u+0.1;
r=r-0.1;
pause(0.01);
    end
end