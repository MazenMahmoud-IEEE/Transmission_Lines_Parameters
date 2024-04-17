% ABCD parameters calculation of cascaded network function 

function [ A_cas , B_cas , C_cas , D_cas] = calc_cascaded(no_of_cascaded)

i = 0;
A_cas = 1; B_cas = 1; C_cas = 1; D_cas = 1;

for i = 0:no_of_cascaded - 1
   cas_matrix = [ A_cas , B_cas ; C_cas , D_cas ] ; 
   [ A , B , C , D ]  = calc_parameters() ; 
   matrix = [ A, B ; C, D ] ;
   cas_matrix = cas_matrix * matrix ;
   A_cas = cas_matrix(1, 1);
   B_cas = cas_matrix(1, 2);
   C_cas = cas_matrix(2, 1);
   D_cas = cas_matrix(2, 2);
end

disp(' ');
disp(['Cascaded A= ',num2str(A_cas)]);
disp(['Cascaded B= ',num2str(B_cas)]);
disp(['Cascaded C= ',num2str(C_cas)]);
disp(['Cascaded D= ',num2str(D_cas)]);
   