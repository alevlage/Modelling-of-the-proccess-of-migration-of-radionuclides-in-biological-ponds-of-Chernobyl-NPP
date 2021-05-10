clc,clear all
global a12 a23 a32 a34 a24 a42 a25 a56 a65 a67 a57 a75 a58 a89 a98 a9_10 a8_10 a10_8 a8_11

%% Values of the coefficients
a12 = 0.8; a25 = 0.7; a58 = 0.9; 
a23 = 0.4; a32 = 0.01; a34 = 0.01; a24 = 0.2;
a42 = 0.03;  a56 = 0.1; a65 = 0.01; a67 = 0.01; a57 = 0.15;
a75 = 0.03;  a89 = 0.1; a98 = 0.01; a9_10 = 0.01; 
a8_10 = 0.15; a10_8 = 0.03; a8_11 = 0.4;

%% Integration and plotting
%% Biological pond 1:
Time = 200; % Integration time
y0=[1 0 0 0 0 0 0 0 0 0 0]; % Initial conditions
[t, y] = ode45('odefun', Time,y0);
yt = y(:,2);
zt = y(:,3); 
kt = y(:,4); 
figure(1)
plot(t,yt, t, zt, t, kt,'LineWidth',2), grid minor
xlabel('Time, seconds'), ylabel('y(t), z(t), k(t)');
legend('Accumulation of radionuclides in the water chamber y(t)',...
'Accumulation of radionuclides in the biota chamber z(t)',...
'Accumulation of radionuclides in the bottom sediments k(t)')
set(gca,'FontSize',11)
title('Plot of radionuclide accumulation in the biopond 1');
%% Biological pond 2
Time = 180; % Integration time
y0=[1 0 0 0 0 0 0 0 0 0 0]; % Initial conditions
[t, y] = ode45('odefun', Time,y0);
lt = y(:,5);
mt = y(:,6); 
nt = y(:,7); 
figure(2)
plot(t,nt, t, mt, t, lt,'LineWidth',2), grid minor
xlabel('Time, seconds'), ylabel('n(t), m(t), l(t)');
legend('Accumulation of radionuclides in the water chamber n(t)',...
'Accumulation of radionuclides in the biota chamber m(t)',...
'Accumulation of radionuclides in the bottom sediments l(t)')
set(gca,'FontSize',11)
title('Plot of radionuclide accumulation in the biopond 2');
%% Biological pond 3
Time = 180; % Integration time
y0=[1 0 0 0 0 0 0 0 0 0 0]; % Initial conditions
[t, y] = ode45('odefun', Time,y0);
ot = y(:,8);
pt = y(:,9); 
qt = y(:,10); 
figure(3)
plot(t,ot, t, pt, t, qt,'LineWidth',2), grid minor
xlabel('Time, seconds'), ylabel('o(t), p(t), q(t)');
legend('Accumulation of radionuclides in the water chamber o(t)',...
'Accumulation of radionuclides in the biota chamber p(t)',...
'Accumulation of radionuclides in the bottom sediments q(t)')
set(gca,'FontSize',11)
title('Plot of radionuclide accumulation in the biopond 3');