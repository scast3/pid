s = tf('s');
m = 2000; %kg
b = 120;
G = (1)/((120*s)+(2000*s^2));
f_max = 5600; %N
%step(f_max*G);

% PD Controller 

C = 450*(1+4*s);

inner = feedback(G,kd*s);
%TF = feedback(kp*inner,1);
%sisotool

%stepinfo(10*TF)
%step(10*TF);

% PID Controller

kp = 1750; %1750
kd = 2690; %1690
ki = 130;  %130
TF = feedback((kp+(ki/s))*feedback(G,kd*s),1);
%stepplot(TF*27/s,27/s) % Part B - Xout and Xtarget
%step((27/s)-(TF*(27/s))) % Part C - Difference
step(TF*27) % Part D - Drafting Velocity



