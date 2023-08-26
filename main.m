
%Pressure-Velocity Coupling in Unsteady Flows - PISO Algorithm
%Rohit Suryawanshi

clear all;
% Initial Conditions:
Ti = 200;
TB = 0;
k = 10;
L = 2;
n = 5;
delta_x = L/n;

%Creation of Matrices
T = zeros([n 1]);
T0 = ones([n 1])*Ti;
COF = zeros(n);
SID = zeros([n 1]);

%Coefficients Calculation
for ii=1:10
for i=1:n
    if i==1
        ap = 200;
        a0p = ap;
        aw = 0;
        ae = k/delta_x;
        Su = 0;
        COF(i,i) = ap;
        SID(i) = ae*T0(i+1)+(a0p-(aw+ae))*T0(i);
    elseif i==n
        ap = 200;
        a0p = ap;
        aw = k/delta_x;
        ae = 0;
        Su = 2*k*(TB-T0(n))/delta_x;
        COF(i,i) = ap;
        SID(i) = aw*T0(i-1)+(a0p-(aw+ae))*T0(i)+Su;
    else
        ap = 200;
        a0p = ap;
        aw = k/delta_x;
        ae = k/delta_x;
        Su = 0;
        COF(i,i) = ap;
        SID(i) = aw*T0(i-1)+ae*T0(i+1)+(a0p-(aw+ae))*T0(i);
    end
end

for i=1:n
    x(i) = delta_x*(i-0.5);
end
T = COF\SID
T0 = T;
end

plot(x,T,'-o')
