close all;
clear all;
clc;
disp("Testing om.utils.denormalize");
D = [1, 11, 5;...
     2, 10, 3];

BIAS_expected = min(D, [], 'all');
SCALE_expected = max(D, [], 'all') - BIAS_expected;

NORMALIZED = 0.5;
DENORMALIZED_expected = SCALE_expected*NORMALIZED + BIAS_expected;

[SCALE, BIAS] = om.utils.denormalize(D);
assert(SCALE==SCALE_expected && BIAS==BIAS_expected, "Scale or Bias incorrect");


DENORMALIZED = om.utils.denormalize(D, NORMALIZED);
assert(DENORMALIZED==DENORMALIZED_expected, "Denormalization failed");

[DENORMALIZED, SB] = om.utils.denormalize(D, NORMALIZED);
assert(DENORMALIZED==DENORMALIZED_expected &&...
  SB(1)==SCALE_expected && SB(2)==BIAS_expected,...
  "Third output form failed"...
);


clear all;
disp("End of test");
