function e = enerHullTriExternal(coor,cutoff,hull,centers)
% Returning the energy of a triangle specified by "coor" and the
% triangular hull. The model is masses and springs where distance is
% measured from all found particle centers. All distances larger
% than "cutoff" have no contribution and there is a shift of
% energy for active springs in order for them to be
% energetically favorable.

% The input is:
% coor - The coordinates of the triangle's center and it's
% rotation angle as (x,y,angle).
% cutoff - The cutoff distance for connected springs.
% hull - The triangular hull.
% centers - The (x,y) locations of the detected particles.
% The output is:
% e - The computed energy.

coorHull = convertToTriExternal(hull,coor(1:2),coor(3));
shift=-cutoff^2;
centXRep=repmat(centers(:,1),1,3);
hXReshape=reshape(coorHull(:,1),1,[]);
centYRep=repmat(centers(:,2),1,3);
hYReshape=reshape(coorHull(:,2),1,[]);
dist=sqrt((hXReshape-centXRep).^2+(hYReshape-centYRep).^2);
dist(dist>cutoff)=0;
e=shift*sum(sum(dist>0));
e=e+sum(sum(dist.^2));
end