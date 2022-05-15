
% Ismail Gokbas, Demircan Demir,Ismet Mert EskiBorekcioglu tarafindan hazirlanmistir.

fis = mamfis('Name',"MyFis");
fis = addInput(fis,[7 16],"Name","Temperature");

fis = addMF(fis,"Temperature","trimf",[7 7 9],'Name',"VC");
fis = addMF(fis,"Temperature","trimf",[7 9 11],'Name',"C");
fis = addMF(fis,"Temperature","trimf",[10 12 14],'Name',"N");
fis = addMF(fis,"Temperature","trimf",[12 14 16],'Name',"H");
fis = addMF(fis,"Temperature","trimf",[13 16 16],'Name',"VH");


% Ismail Gokbas, Demircan Demir,Ismet Mert EskiBorekcioglu tarafindan hazirlanmistir.

fis = addInput(fis,[1.75 4],"Name","Pressure");
fis = addMF(fis,"Pressure","trimf",[1.75 1.75 2.25],'Name',"VB");
fis = addMF(fis,"Pressure","trimf",[1.75 2.25 2.50],'Name',"B");
fis = addMF(fis,"Pressure","trimf",[2.25 2.75 3.25],'Name',"N");
fis = addMF(fis,"Pressure","trimf",[2.50 3.25 3.50],'Name',"G");
fis = addMF(fis,"Pressure","trimf",[2.75 4 4],'Name',"VG");

% Ismail Gokbas, Demircan Demir,Ismet Mert EskiBorekcioglu tarafindan hazirlanmistir.

fis = addOutput(fis,[2 6],"Name","PercentageOfCarbonDioxide");
fis = addMF(fis,"PercentageOfCarbonDioxide","trimf",[2 2 3],'Name',"VB");
fis = addMF(fis,"PercentageOfCarbonDioxide","trimf",[2 3 4],'Name',"B");
fis = addMF(fis,"PercentageOfCarbonDioxide","trimf",[3 4 5],'Name',"N");
fis = addMF(fis,"PercentageOfCarbonDioxide","trimf",[4 5 6],'Name',"G");
fis = addMF(fis,"PercentageOfCarbonDioxide","trimf",[5 6 6],'Name',"VG");

% Ismail Gokbas, Demircan Demir,Ismet Mert EskiBorekcioglu tarafindan hazirlanmistir.


rule1 = [1,1,3,1,1]; rule2 = [1,2,3,1,1]; rule3 = [1,3,4,1,1]; rule4 = [1,4,5,1,1]; rule5 = [1,5,5,1,1];

rule6 = [2,1,2,1,1]; rule7 = [2,2,4,1,1]; rule8 = [2,3,4,1,1]; rule9 = [2,4,4,1,1]; rule10 =[2,5,5,1,1];

rule11 = [3,1,2,1,1]; rule12 = [3,2,3,1,1]; rule13 = [3,3,3,1,1]; rule14 = [3,4,4,1,1]; rule15 = [3,5,5,1,1];

rule16 = [4,1,2,1,1]; rule17 = [4,2,2,1,1]; rule18 = [4,3,3,1,1]; rule19 = [4,4,3,1,1]; rule20 = [4,5,4,1,1];

rule21 = [4,1,1,1,1]; rule22 = [4,2,2,1,1]; rule23 = [4,3,3,1,1]; rule24 = [4,4,3,1,1]; rule25 = [4,5,4,1,1];

% Ismail Gokbas, Demircan Demir,Ismet Mert EskiBorekcioglu tarafindan hazirlanmistir.

ruleList = [rule1;rule2;rule3;rule4;rule5;rule6;rule7;rule8;rule9;rule10;rule11;rule12;rule13;rule14;
    rule15;rule16;rule17;rule18;rule19;rule20;rule21;rule22;rule23;rule24;rule25];

%Ismail Gokbas
fis2 = addRule(fis,ruleList);


inputs = [7.3 2.67; 10.31 3.13 ;9.49 2.23; 13 4];
output = evalfis(fis2,inputs);
difuzzMemberfunc = trimf(output,[4 5 6]);
defuzz(output,difuzzMemberfunc,'centroid') %returns 4.9530






