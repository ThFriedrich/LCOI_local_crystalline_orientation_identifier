function coorHexa = convertToHexaExternal(hu,cent,rot)
% Returning the 6 vertices of an hexagon according to the input.

% The input is:
% hu - The hexagonal hull.
% cent - The desired center of the hexagon as (x,y).
% rot - The rotation angle of the long axis of the hexagon.
% The output is:
% coorHexa - The corrdinates of the 6 vertices of the shifted
% and rotated hexagon.

coorHexa=[-(hu(1)/2+hu(3)),0;-(hu(1)/2),hu(2)/2;(hu(1)/2),hu(2)/2;(hu(1)/2+hu(3)),0;(hu(1)/2),-hu(2)/2;-(hu(1)/2),-hu(2)/2];
M = [cos(rot) -sin(rot); sin(rot) cos(rot)];
coorHexa=(M*coorHexa')';
coorHexa=coorHexa+cent;
end