function v = nansum (X, varargin)
  if nargin < 1
    usage ("v = nansum (X [, dim])");
  else
    X(isnan(X)) = 0;
    v = sum (X, varargin{:});
  endif
endfunction