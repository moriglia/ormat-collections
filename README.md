# OrMAT Collections
[![GitHub license](https://img.shields.io/github/license/moriglia/ormat-collections)](https://github.com/moriglia/ormat-collections/blob/master/LICENSE)

A collection of MATLAB utilities I may use in different projects or courses

## Installation
1. `git-clone` the repository where you want

### With `make` (recommended)
2. `make`: generates the `add_ormat_to_current_project.m` file
	- Note: if you move the OrMAT Collections directory
	  you will need to `make clean` and repeat from step 2
	- The path you previously set will not change whitin the
	  projects for which you have already configured OrMAT Collections:
	  remove it manually or delete `pathdef.m` from the project folder
	  if OrMAT was the only manually added path
3. Copy the `add_ormat_to_current_project.m` file into the directory
   of the project which you want to use OrMAT Collections in.
4. Launch `add_to_current_projec.m` script within your project directory:
   it will create a `pathdef.m` file that includes the OrMAT Collections directory.

```bash
git clone https://github.com/moriglia/ormat-collections.git
make
cp add_ormat_to_current_project.m path/to/my/project/directory/
cd path/to/my/project/directory/
# Now open MALTAB here and launch add_ormat_to_current_project.m
```

### Without `make`
2. `cp add_to_path.m add_to_path_configured.m`
3. Open the new file `add_to_path_configured.m`
  and specify which file `pathdef.m` you want to add the OrMAT Collections to.

## Use it
```MATLAB
%% Do something only the first time you run the script
if om.utils.onlyonce()
  disp("As long as you don't 'clear all', you will see this message only once");
  load('VeryHugeFile.mat');
end

%% Get incremental counter for figures
% So you don't mistakenly use the same figure twice
figure(om.utils.nextnum());
plot(wonderful_data);

figure(om.utils.nextnum());
plot(wonderful_data);

%% Normalize data
[D, SCALE, BIAS] = om.utils.normalize(DATA);

%% Use help for further usage information
```

## Test
Testing makes use of [MOxUnit](https://github.com/MOxUnit/MOxUnit)
