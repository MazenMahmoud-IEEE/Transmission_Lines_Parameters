%main

no_of_cascaded = input("Enter no. of cascaded networks : ");
[ A_cas , B_cas , C_cas , D_cas] = calc_cascaded(no_of_cascaded) ;

disp(' ');
Pr=input("Enter the received power in watts: ");
Vr_line_mag=input("Enter the received voltage: ");
PFr=abs(cosd(input("Enter the power factor angle in degrees: ")));
PFr_type=input("Enter the type of power factor:\nType 1 if its unity\nType 2 if its lagging\nType 3 if its leading\n");

[ Ps , Vs_phase , Vr_phase] = calc_sending_receiving(Pr , PFr , PFr_type , Vr_line_mag , A_cas , B_cas , C_cas , D_cas );

efficiency = calc_efficiency(Ps , Pr);
regulation = calc_regulation(Vs_phase , Vr_phase , A_cas);



