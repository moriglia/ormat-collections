function [d, varargout] = normalize(data)
% normalize   Take data structure and normalize it
%   D = normalize(X)
%     D will normalize X in all dimensions
%   [D, PARAMS] = normalize(X)
%     LIMS = [ SCALE, BIAS ]
%   [D, SCALE, BIAS] = normalize(X)
%
%   To go back from normalized data to original data:
%   ORIGINAL = D*SCALE + BIAS;

  mindata = min(data, [], 'all');
  maxdata = max(data, [], 'all');

  scale = maxdata - mindata;
  bias = mindata;
  d = (data - bias)./scale;

  % Optional detected data ranges
  if nargout > 1
    if nargout == 2
      varargout{1} = [scale, bias];
    elseif nargout==3
      varargout{1} = scale;
      varargout{2} = bias;
    else
      error("Too many outoput arguments. Seek for `help normalize` :P");
    end
  end
end
