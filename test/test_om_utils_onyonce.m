disp("Testing om.utils.onlyonce");
clear onlyonce;
assert(om.utils.onlyonce(), "Failed the first time!");

for k=1:5
  assert(om.utils.onlyonce(k), "Failed the first time with handler %d", k);
end

for k=1:5
  assert(~om.utils.onlyonce(k), "It was not the first time for handler %d", k);
end

clear k;
clear onlyonce;

disp("Test completed");
