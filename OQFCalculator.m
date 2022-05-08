function [ y ] = OQFCalculator( Data_OQF )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

Limits=[30  35   40
       0.05 0.1  0.2
       45   35   30
      0.001 0.005 0.01
       1.5   2  2.5
       25   20   15];
   S=zeros(1,6);
   for i=1:6
    S(i)=ScoreCalculator_OQF(Data_OQF(i),Limits(i,:),i);
   end
 W=[4 1 3 3 2 2];
 SW=S.*W;
 OQF_Calculated=sum(SW)/sum(W);
 if OQF_Calculated<1.2
    OQF_Final=4;
elseif OQF_Calculated>=1.2  && OQF_Calculated<1.5
    OQF_Final=3;
elseif OQF_Calculated>=1.5  && OQF_Calculated<2
    OQF_Final=2;
elseif OQF_Calculated>=2  && OQF_Calculated<3
    OQF_Final=1;
elseif OQF_Calculated>=3  
    OQF_Final=0;
 end
y=[OQF_Calculated, OQF_Final];