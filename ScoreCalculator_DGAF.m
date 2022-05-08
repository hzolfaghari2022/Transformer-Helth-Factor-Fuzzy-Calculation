function [ S ] = ScoreCalculator_DGAF( Data,limits )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here


if Data<limits(1)
    S=1;
elseif Data>=limits(1) && Data<limits(2)
        S=2;
    elseif Data>=limits(2) && Data<limits(3)
        S=3;
        elseif Data>=limits(3) && Data<limits(4)
            S=4;
            elseif Data>=limits(4) && Data<limits(5)
                S=5;
else
    S=6;
                    
end