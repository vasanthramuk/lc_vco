k =1.38e-23;
T=300;
gamma=1;
fo = 1.58e9;
rp =750;
L = 1e-10;
Q =16.7;
delf = 100e3;

iss2= ((pi^2)*k*T*(gamma+1)*(fo^2))/((2*rp*L*(2*Q*delf)^2));
iss0 = iss2^0.5

% k =1.38e-23;
% T=350;
% gamma=1;
% fo = 30e9;
% rp =750;
% L = 1e-10;
% Q =9;
% delf = 1000e3;
% 
% iss2= ((pi^2)*k*T*(gamma+1)*(fo^2))/((2*rp*L*(2*Q*delf)^2));
% iss0 = iss2^0.5