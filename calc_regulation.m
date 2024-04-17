%Voltage Regulation Calculation function%
function[VR] = calc_regulation( Vs_phase , Vr_phase ,A_cas )

Vr_no_load=abs(Vs_phase)/abs(A_cas);
Vr_full_load=abs(Vr_phase);
VR=((Vr_no_load-Vr_full_load)/Vr_full_load)*100;
disp('Voltage Regulation% =');
disp(VR);