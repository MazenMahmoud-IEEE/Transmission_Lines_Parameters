%Power Efficiency Calculation function%

function [ eff ] = calc_efficiency( Ps , Pr )

eff=(Pr/Ps)*100;
disp(' ');
disp('Efficiency% =');
disp(eff);