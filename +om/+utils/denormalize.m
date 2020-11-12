function [OUT, varargout] = denormalize(varargin)
% denormalize   map a value in [0, 1] back to a different domain
%   [SCALE, BIAS] = denormalize(DATA)
%     to map a normalized value NV in a not normalized value NNV:
%     NNV = NV*SCALE + BIAS
%   NNV = denormalize(DATA, NV)
%     Apply NNV = NV*SCALE + BIAS
%   [NNV, [SCALE, BIAS]] = denormalize(DATA, NV)
%     Apply NNV = NV*SCALE + BIAS
  if nargin < 1
    error("Not enough input argument");
  end

  bias = min(varargin{1}, [], 'all');
  scale = max(varargin{1}, [], 'all') - bias;

  if nargin == 1
    if nargout <= 1
      OUT = [ scale, bias ];
    elseif nargout == 2
      OUT = scale;
      varargout{1}= bias;
    else
      error("Too many output arguments");
    end
  elseif nargin==2
    % varargin{2} will be a normalized value in [0, 1]

    % OUT will be the denormalize quantity
    OUT = varargin{2}*scale + bias;

    if nargout
      if nargout == 2
        varargout{1} = [scale, bias];
      elseif nargout == 3
        varargout{1} = scale;
        varargout{2} = bias;
      elseif nargout > 3
        error("Too many output arguments");
      end
    end
end
