function coorTri = convertToTriExternal(l,cent,rot)
% Returning the 3 vertices of a tritangle centered at "cent" and rotated by an angle "rot"
% with the parameter specified in "l" which is the edge length.).

% The input is:
% l - The l parameter of the triangular hull.
% cent - The desired center of the triangle as (x,y).
% rot - The rotation angle of the triangle.
% The output is:
% coorTri - The corrdinates of the 3 vertices of the shifted
% and rotated triangle.

coorTri=[0,2/3*sqrt(0.75)*l;l/2,-1/3*sqrt(0.75)*l;-l/2,-1/3*sqrt(0.75)*l];
M = [cos(rot) -sin(rot); sin(rot) cos(rot)];
coorTri=(M*coorTri')';
coorTri=coorTri+cent;
end