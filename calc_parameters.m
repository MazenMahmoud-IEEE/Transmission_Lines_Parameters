% calculating ABCD Parameters function

function [ A, B , C, D ]  = calc_parameters()

disp(' ');
disp(['Select transmission line model:']);
disp('1-Short');
disp('2-Medium');
disp('3-Long');
model=input('Enter your choice:');

length_of_line=input('Enter the Length in km:');
frequency=input('Enter the frequency:');
R_per_km=input('Enter Resistance per km:');
L_per_km=input('Enter inductance per km:');
C_per_km=input('Enter capacitance per km:');


switch model

    case 1 

        Z = (R_per_km + 2*pi*frequency*L_per_km*i)*length_of_line;
        Y = (2*pi*frequency*C_per_km*i)*length_of_line;
        A=1;
        B=Z;
        C=0;
        D=A;
        
        disp(' ');
        disp(['A= ',num2str(A)]);
        disp(['B= ',num2str(B)]);
        disp(['C= ',num2str(C)]);
        disp(['D= ',num2str(D)]);

    case 2

        Z = (R_per_km + 2*pi*frequency*L_per_km*i)*length_of_line;
        Y = (2*pi*frequency*C_per_km*i)*length_of_line;
        A=1+(Y*Z/2);
        B=Z;
        C=Y*(1+Y*Z/4);
        D=A;

        disp(' ');
        disp(['A= ',num2str(A)]);
        disp(['B= ',num2str(B)]);
        disp(['C= ',num2str(C)]);
        disp(['D= ',num2str(D)]);

    case 3

        Z = (R_per_km + 2*pi*frequency*L_per_km*i)*length_of_line;
        Y = (2*pi*frequency*C_per_km*i)*length_of_line;
        A=cosh(sqrt(Z*Y));
        B=sqrt(Z/Y)*sinh(sqrt(Z*Y));
        C=sqrt(Y/Z)*sinh(sqrt(Z*Y));
        D=A;

        disp(' ');
        disp(['A= ',num2str(A)]);
        disp(['B= ',num2str(B)]);
        disp(['C= ',num2str(C)]);
        disp(['D= ',num2str(D)]);

    otherwise
        
        disp(' ');
        disp('Invalid choice');

end



