%Received Voltage and Current and Power Calculation function%

function [ Ps , Vs_phase , Vr_phase] = calc_sending_receiving(Pr , PFr , PFr_type , Vr_line_mag , A_cas , B_cas , C_cas , D_cas ) 

Vr_phase = complex( Vr_line_mag /sqrt(3),0);

if(PFr_type == 1)
Ir_dir=angle(Vr_phase);
elseif(PFr_type == 2)
Ir_dir=angle(Vr_phase)-acos(PFr);
elseif(PFr_type == 3)
Ir_dir=angle(Vr_phase)+acos(PFr);
elseif(PFr_type ~= 1 && PFr_type ~= 2 && PFr_type ~= 3)
disp("Incorrect input");
return
end

Ir_mag=Pr/(abs(Vr_phase)*3*PFr);
[a,b]=pol2cart(Ir_dir,Ir_mag);
Ir=complex(a,b);

%Sending Voltage and Current and Power Calculations function%

Vs_phase = A_cas * Vr_phase + B_cas * Ir;
Is = (C_cas * Vr_phase) + ( D_cas * Ir);
PFs = abs(cos(angle(Vs_phase)-angle(Is)));
Ps = 3 * abs(Vs_phase) * abs(Is) * PFs;
