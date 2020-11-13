disp("Testing om.utils.onlyonce");
clear nextnum;

for k=1:20
  nn = om.utils.nextnum();
  assert(nn==k,...
    "Nextnum is not correct: got %d, expected %d", nn, k);
end

assert(om.utils.nextnum(5, 3)==5,...
  "Failed restarting from 5 and setting step=3");

for k=1:5
  assert(om.utils.nextnum()==(5+k*3),...
    "Succession not correct");
end

assert(om.utils.nextnum(1)==1,...
  "Failed restarting from 1");

for k=1:15
  nn = om.utils.nextnum();
  assert(nn==(1+k*3),...
    "Succession not correct: got %d, expected %d", nn, 1+k*3);
end

clear k nn;
clear nextnum;

disp("Test completed");
