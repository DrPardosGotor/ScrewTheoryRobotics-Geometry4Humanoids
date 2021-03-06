%% "TFORM2ADJOINT" Find the adjoint matrix associated with a tform.
% Use in SE(3).
%
% 	Ad = tform2adjoint(tform)
%
% ADJOINT TRANSFORMATION:
% it is used to transforms twist from one coordinate frame to another.
% Vs =Adg*Vb ; Vac = Adgab*Vbc ; E'=Adg*E
% The adjoint transformation maps twist vectors to twist vectors.
% Compute the Adg in R^6 (6x6 matrix9 from the homogeneous matrix g 4x4.
%      |R p^R|            |R p|
% Adg =|     | <= tform = |   |
%      |0   R|            |0 1|
% With p^=axis2skew(p)
%
% See also: axis2skew,
%
% Copyright (C) 2001-2019, by Dr. Jose M. Pardos-Gotor.
%
% This file is part of The ST24R "Screw Theory Toolbox for Robotics" MATLAB
% 
% ST24R is free software: you can redistribute it and/or modify
% it under the terms of the GNU Lesser General Public License as published
% by the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% ST24R is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU Lesser General Public License for more details.
% 
% You should have received a copy of the GNU Leser General Public License
% along with ST24R.  If not, see <http://www.gnu.org/licenses/>.
%
% http://www.
%
% CHANGES:
% Revision 1.1  2019/02/11 00:00:01
% General cleanup of code: help comments, see also, copyright
% references, clarification of functions.
%
%% 	Ad = tform2adjoint(tform)
function Ad = tform2adjoint(tform)
%
    R = tform(1:3,1:3);
    p = tform(1:3,4);
 	Ad = [R axis2skew(p)*R; zeros(3) R];
end
%