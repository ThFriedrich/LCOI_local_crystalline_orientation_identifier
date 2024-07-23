function e = enerHullRectExternal(coor,cutoff,hull,centers)
% Returning the energy of a rectangle specified by "coor" and the
% rectangular hull. The model is masses and springs (with constant "k") where distance is
% measured from all found particle centers. All distances larger
% than "cutoff" have no contribution and there is a shift of
% energy for active springs in order for them to be
% energetically favorable.

% The input is:
% coor - The coordinates of the rectangle's center and it's
% rotation angle as (x,y,angle).
% cutoff - The cutoff distance for connected springs.
% hull - The rectangular hall.
% centers - The (x,y) locations of the detected particles.
% The output is:
% e - The computed energy.

coorHull = convertToRectExternal(hull,coor(1:2),coor(3));
shift=-cutoff^2;
centXRep=repmat(centers(:,1),1,4);
hXReshape=reshape(coorHull(:,1),1,[]);
centYRep=repmat(centers(:,2),1,4);
hYReshape=reshape(coorHull(:,2),1,[]);
dist=sqrt((hXReshape-centXRep).^2+(hYReshape-centYRep).^2);
dist(dist>cutoff)=0;
e=shift*sum(sum(dist>0));
e=e+sum(sum(dist.^2));
end