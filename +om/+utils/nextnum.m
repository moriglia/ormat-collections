function n = nextnum(varargin)
% nextnum   Yield sequential integers
%   n = nextnum() yields 1 the first time it is called
%   Later it will yield the last yielded number incremented by STEP
%   STEP is 1 by default
%
%   n = nextnum(P) yields P
%   Later nextnum() without arguments will still yield
%   the last yielded number incremented by STEP,
%   i.e. it will yield P+STEP, P+2*STEP, P+3*STEP, ...
%   STEP is 1 by default
%
%   n = nextnum(P, STEP) yields P and sets STEP
%   Later nextnum() without arguments will still yield
%   the last yielded number incremented by STEP,
%   i.e. it will yield P+STEP, P+2*STEP, P+3*STEP, ...
%   This syntax is the only way to set STEP

    persistent k step;

    if nargin
        if nargin > 1
            step = varargin{2};
        elseif isempty(step);
            step = 1;
        end
        k = varargin{1} - step;
    elseif isempty(k)
        k = 0;
        step = 1;
    end

    k = k + step;
    n = k;
end
