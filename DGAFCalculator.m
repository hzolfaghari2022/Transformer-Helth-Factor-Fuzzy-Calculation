function y  = DGAFCalculator( Data_DGAF )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

Limits=[155  225  365  585  700
       103  145  240  400  600
       92.5 95.5 96.5 97.5 100
       75   85   95   105  130
       5    15   25   35   60
       500  850  1050 1250 1400
       2750 3500 4500 6000 7000];
S=zeros(1,7);
for i=1:7
    S(i)=ScoreCalculator_DGAF(Data_DGAF(i),Limits(i,:));
end
W=[2 3 3 3 5 1 1];
SW=S.*W;

DGAF_Calculated=sum(SW)/sum(W);

if DGAF_Calculated<1.2
    DGAF_Final=4;
elseif DGAF_Calculated>=1.2  && DGAF_Calculated<1.5
    DGAF_Final=3;
elseif DGAF_Calculated>=1.5  && DGAF_Calculated<2
    DGAF_Final=2;
elseif DGAF_Calculated>=2  && DGAF_Calculated<3
    DGAF_Final=1;
elseif DGAF_Calculated>=3  
    DGAF_Final=0;
end
y=[DGAF_Calculated, DGAF_Final];