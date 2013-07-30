function f = conj(f)
%CONJ	 Complex conjugate of a chebfun object.
%   CONJ(F) is the complex conjugate of F.
%
% See also REAL, IMAG.

% Copyright 2013 by The University of Oxford and The Chebfun Developers.
% See http://www.maths.ox.ac.uk/chebfun/ for Chebfun information.

% Conjugate the impulses:
f.impulses = conj(f.impulses);

% Conjugate the funs:
for k = 1:numel(f.funs)
    f.funs{k} = conj(f.funs{k});
end

end