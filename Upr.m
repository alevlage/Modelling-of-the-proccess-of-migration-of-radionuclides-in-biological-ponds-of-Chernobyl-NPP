clc,clear all
global a12 a23 a32 a34 a24 a42 a25 a56 a65 a67 a57 a75 a58 a89 a98 a9_10 a8_10 a10_8 a8_11

%% �������� ����������� �������� ����������:
a12 = 0.8; a25 = 0.7; a58 = 0.9; %������������ ���������

a23 = 0.4; a32 = 0.01; a34 = 0.01; a24 = 0.2;
a42 = 0.03;  a56 = 0.1; a65 = 0.01; a67 = 0.01; a57 = 0.15;
a75 = 0.03;  a89 = 0.1; a98 = 0.01; a9_10 = 0.01; 
a8_10 = 0.15; a10_8 = 0.03; a8_11 = 0.4;

%% �������������� � �������� �������:
%% ��������� 1:
Time = 200; %��� ������������
y0=[1 0 0 0 0 0 0 0 0 0 0]; %�������� �����
[t, y] = ode45('PrCh', Time,y0);
yt = y(:,2);
zt = y(:,3); 
kt = y(:,4); 
figure(1)
plot(t,yt, t, zt, t, kt,'LineWidth',2), grid minor
xlabel('���, �'), ylabel('y(t), z(t), k(t)');
legend('����������� ���������� � ����� ���� y(t)',...
'����������� ���������� � ����� ���� z(t)',...
'����������� ���������� � ����� ����� ������� k(t)')
set(gca,'FontSize',11)
title(' ������ ����������� ���������� � �������� 1');
%% ��������� 2
Time = 180; %��� ������������
y0=[1 0 0 0 0 0 0 0 0 0 0]; %�������� �����
[t, y] = ode45('PrCh', Time,y0);
lt = y(:,5);
mt = y(:,6); 
nt = y(:,7); 
figure(2)
plot(t,nt, t, mt, t, lt,'LineWidth',2), grid minor
xlabel('���, �'), ylabel('n(t), m(t), l(t)');
legend('����������� ���������� � ����� ���� n(t)',...
'����������� ���������� � ����� ���� m(t)',...
'����������� ���������� � ����� ����� ������� l(t)')
set(gca,'FontSize',11)
title(' ������ ����������� ���������� � �������� 2');
%% ��������� 3
Time = 180; %��� ������������
y0=[1 0 0 0 0 0 0 0 0 0 0]; %�������� �����
[t, y] = ode45('PrCh', Time,y0);
ot = y(:,8);
pt = y(:,9); 
qt = y(:,10); 
figure(3)
plot(t,ot, t, pt, t, qt,'LineWidth',2), grid minor
xlabel('���, �'), ylabel('o(t), p(t), q(t)');
legend('����������� ���������� � ����� ���� o(t)',...
'����������� ���������� � ����� ���� p(t)',...
'����������� ���������� � ����� ����� ������� q(t)')
set(gca,'FontSize',11)
title(' ������ ����������� ���������� � �������� 3');