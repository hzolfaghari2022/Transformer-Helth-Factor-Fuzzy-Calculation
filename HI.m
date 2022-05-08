clc;
clear;


% Choose a Transformator
TransformatorNumber=3
Sample=TransSelection(TransformatorNumber);
%% DGAF Calculation
k=DGAFCalculator(Sample.DGAF);
DGAF_Calculated=k(1);
DGAF_Final=k(2);

%% OQF Calculator
k=OQFCalculator(Sample.OQF);
OQF_Calculated=k(1);
OQF_Final=k(2);

%% Furan Factor Calculator
FFA=FFACalculator(Sample.FFA);

Cal = [ DGAF_Final OQF_Final FFA];
%% Health Index Calculation
WF=[10 6 5];           %Weight Factor

HI_Final = 100 * sum(WF.*Cal)/ (4 * sum(WF))

% HealthIndex=(WF(1)*DGAF_Final+WF(2)*OQF_Final+WF(3)*FFA)/(4*sum(WF))*100