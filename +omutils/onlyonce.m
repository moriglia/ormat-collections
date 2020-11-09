function FIRST_TIME = onlyonce(varargin)
% onlyonce  Return true only the first time
%   'clear all' will reset the function status

  persistent firstTimeMap;

  if nargin
    caller = uint32(varargin{1});
  else
    caller = uint32(0);
  end

  if isempty(firstTimeMap)
    firstTimeMap = containers.Map('KeyType', 'uint32', 'ValueType', 'logical');
    firstTimeMap(caller) = false;
    FIRST_TIME = true;
    return;
  elseif ~isKey(firstTimeMap, caller)
    firstTimeMap(caller) = false;
    FIRST_TIME = true;
    return;
  end

  FIRST_TIME = false;
end
