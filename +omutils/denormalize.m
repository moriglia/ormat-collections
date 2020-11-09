function [OUT, varargout] = denormalize(varargin)
% denormalize   map a value in [0, 1] back to a different domain
%   [SCALE, BIAS] = denormalize(DATA)
%     to map a normalized value NV in a not normalized value NNV:
%     NNV = NV*SCALE + BIAS
%   NNV = denormalize(DATA, NV)
%     Apply NNV = NV*SCALE + BIAS
%   [NNV, [SCALE, BIAS]] = denormalize(DATA, NV)
%     Apply NNV = NV*SCALE + BIAS

  if nargin == 1
    bias = min(varargin{1}, [], 'all');
    scale = max(varargin{1}, [], 'all') - bias;
    OUT = [ scale, bias ];
  elseif nargin==2
    % varargin{2} will be a normalized value in [0, 1]
    bias = min(varargin{1}, [], 'all');
    scale = max(varargin{1}, [], 'all') - bias;

    % OUT will be the denormalize quantity
    OUT = varargin{2}*scale + bias;

    if nargout
      if nargout == 2
        varargout{1} = [scale, bias];
      elseif nargout == 3
        varargout{1} = scale;
        varargout{2} = bias;
      end
    end
end
