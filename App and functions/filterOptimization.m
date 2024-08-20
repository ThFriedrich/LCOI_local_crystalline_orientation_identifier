function s = filterOptimization(cent,im,filt,lF)
%Recieves an (x,y) location for centering "cent", the relevant part of the
%image "im" and a circular gaussian filter "filt" of dimensions (2*lF+1)*(2*lF+1). Returns "s" which is the
%summation of the values of the pixels in "im" multiplied by the values of
%"filt" centered at "cent" including fractional pixels. 
indF=floor(cent-1/2);
fracs=indF+1-(cent-1/2);
s=-fracs(1)*fracs(2)*sum(sum(im(indF(2)-lF:indF(2)+lF,indF(1)-lF:indF(1)+lF).*filt));
s=s-(1-fracs(1))*(1-fracs(2))*sum(sum(im(indF(2)-lF+1:indF(2)+lF+1,indF(1)-lF+1:indF(1)+lF+1).*filt));
s=s-(1-fracs(1))*(fracs(2))*sum(sum(im(indF(2)-lF:indF(2)+lF,indF(1)-lF+1:indF(1)+lF+1).*filt));
s=s-(fracs(1))*(1-fracs(2))*sum(sum(im(indF(2)-lF+1:indF(2)+lF+1,indF(1)-lF:indF(1)+lF).*filt));
end 