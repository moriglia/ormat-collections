function [X, Y] = makegrid(Xmin, Xmax, NX, Ymin, Ymax, NY)
% makegrid  create a grid within the given ranges
% [X, Y] = makegrid(Xmin, Xmax, NX, Ymin, Ymax, NY)
%   Inputs
%       Xmin, Xmax:     X ranges for the grid
%       Ymin, Ymax:     Y ranges for the grid
%       NX, NY:         number of points in each
%   Outputs
%       X, Y:           grid points

    [X, Y] = meshgrid(...
        linspace(Xmin, Xmax, NX),...
        linspace(Ymin, Ymax, NY)...
    );
end