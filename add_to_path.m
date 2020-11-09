%% Configure OrMAT Collections

s = [];

%% Uncomment exactly one of the following CONFIGURATION LINES
% s = which("pathdef.m"); % Test this line separately before running
% s = "<specify your pathdef.m file>"; % Modify before uncommenting

if isempty(s)
    display("You must uncomment one of the CONFIGURATION LINES");
    return
end


addpath(pwd());
savepath(s);
