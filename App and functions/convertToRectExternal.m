function coorRect = convertToRectExternal(hu,cent,rot)
% Returning the 4 vertices of a rectangle according to the input.

% The input is:
% hu - The recangular hull.
% cent - The desired center of the rectangle as (x,y).
% rot - The rotation angle of the long edge of the rectangle.
% The output is:
% coorRect - The corrdinates of the 4 vertices of the shifted
% and rotated rectangle.

coorRect=[-hu(1)/2,hu(2)/2;hu(1)/2,hu(2)/2;hu(1)/2,-hu(2)/2;-hu(1)/2,-hu(2)/2];
M = [cos(rot) -sin(rot); sin(rot) cos(rot)];
coorRect=(M*coorRect')';
coorRect=coorRect+cent;
end