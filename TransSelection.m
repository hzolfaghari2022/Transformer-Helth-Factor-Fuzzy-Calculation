function [ Data ] = TransSelection( i )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

% Transformator 1
T1.DGAF=[15.6 14.4 2.5 0.3 0 1019.6 2619.3];
T1.OQF=[3  0.005  99  0  0 42  1 ];
T1.FFA=0.01;

% Transformator 2
T2.DGAF=[19.9 15.6 3 0.4 0 1240.8 3323.2];
T2.OQF=[2  0.005  84  0  0  43 ];
T2.FFA=0.01;

% Transformator 3
T3.DGAF=[7.9 0 0.7 0.5 0 132.5 1770.7];
T3.OQF=[1  0.133  76  0.005  3  20 ];
T3.FFA=0.28;

% Transformator 4
T4.DGAF=[9.6 2.8 7.1 20.6 0 126.4 2126.51];
T4.OQF=[11  0.046  75  0.001  1  23];
T4.FFA=4.45;

% Transformator 5
T5.DGAF=[19.2 2.4 2.3 6.5 34.8 237.6 3654.1];
T5.OQF=[7  0.042  55  0.002  3  18 ];
T5.FFA=0.54;

% Transformator 6
T6.DGAF=[27.1 236.8 202.1 628.1 27.7 230.5 4810.7];
T6.OQF=[4  0.029  82  0.002  2  18 ];
T6.FFA=2.18;

% Transformator 7
T7.DGAF=[18.7 2.5 41.4 55 58.2 165.8 5123.8];
T7.OQF=[4  0.057  74  0.002  3  18 ];
T7.FFA=2.73;

C=cell(1,7);

C={T1 T2 T3 T4 T5 T6 T7};
Data=C{1,i};

end