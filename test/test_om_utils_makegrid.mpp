%% Test omutils_makegrid
close all;
clear all;
clc;

disp("Testing om.utils.makegrid...");

Xmin=-5;
Xmax=5;
NX = 11;

Ymin=-1;
Ymax=3;
NY = 9;

X_expected = ones(NY, 1)*[Xmin:((Xmax - Xmin)/(NX - 1)):Xmax];
Y_expected = [Ymin:((Ymax - Ymin)/(NY - 1)):Ymax]'*ones(1, NX);


[X, Y] = om.utils.makegrid(Xmin, Xmax, NX, Ymin, Ymax, NY);

assert((sum(X_expected ~= X, 'all') + sum(Y_expected ~= Y, 'all')) == 0,...
    "Error in om.utils.makegrid"...
);

disp("End of test");

clear all;
