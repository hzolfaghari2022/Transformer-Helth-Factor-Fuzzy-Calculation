function [ FFA] = FFACalculator( Furan )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

if Furan<0.1 
    FFA=4;
elseif Furan>=0.1 && Furan<0.25
    FFA=3;
elseif Furan>=0.25 && Furan<0.5
    FFA=2;
elseif Furan>=0.5 && Furan<1
    FFA=1;
elseif Furan>=1
    FFA=0;
end