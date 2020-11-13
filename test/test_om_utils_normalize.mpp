disp("Testing om.utils.normalize");


D = [1, 11, 5;...
     2, 10, 3];
O_expected = [0,     1, 0.4;...
              0.1, 0.9, 0.2];


BIAS_expected = min(D, [], 'all');
SCALE_expected = max(D, [], 'all') - BIAS_expected;
PARAMS_expected = [SCALE_expected, BIAS_expected];

O = om.utils.normalize(D);
assert(sum(O_expected ~= O, 'all') == 0,...
  "First form of output failed");

[O, PARAMS] = om.utils.normalize(D);
assert((sum(O ~= O_expected, 'all') == 0) &&...
  sum(PARAMS~=PARAMS_expected, 'all')==0,...
  "Second form of output failed");

[O, SCALE, BIAS] = om.utils.normalize(D);
assert((sum(O~=O_expected, 'all') == 0) && BIAS==BIAS_expected &&...
  SCALE==SCALE_expected,...
  "Second form of output failed");

clear D O O_expected BIAS BIAS_expected SCALE SCALE_expected PARAMS PARAMS_expected;
disp("End of test");
