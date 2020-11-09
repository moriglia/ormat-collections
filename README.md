# OrMAT Collections
A collection of MATLAB utilities I may use in different projects or courses

## Installation
1. `git-clone` the repository where you want
2. `cp add_to_path.m add_to_path_configured.m`
3. Open the new file `add_to_path_configured.m`
  and specify which file `pathdef.m` you want to add the OrMAT Collections to.

## Use it
```MATLAB
%% Do something only the first time you run the script
if omutils.onlyonce()
  disp("As long as you don't 'clear all', you will see this message only once");
  load('VeryHugeFile.mat');
end

%% Get incremental counter for figures
% So you don't mistakenly use the same figure twice
figure(omutils.nextnum());
plot(wonderful_data);

figure(omutils.nextnum());
plot(wonderful_data);

%% Normalize data
[D, SCALE, BIAS] = omutils.normalize(DATA);

%% Use help for further usage information
```
