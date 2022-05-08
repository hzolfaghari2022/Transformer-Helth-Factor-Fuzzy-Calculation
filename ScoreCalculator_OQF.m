function [ S ] = ScoreCalculator_OGF( Data,Limits,i )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

if sum(i==[1 2 4 5])
    if Data<=Limits(1)
        S=1;
    elseif Data>Limits(1) && Data <=Limits(2)
        S=2;
    elseif Data>Limits(2) && Data <=Limits(3)
        S=3;
    else
        S=4;
    end
else
    if Data>=Limits(1)
        S=1;
    elseif Data <Limits(1) && Data>Limits(2)
        S=2;
    elseif Data <=Limits(2) && Data>Limits(3)
        S=3;    
    elseif Data<=limit(3)
        S=4;
    end
end