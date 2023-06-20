size(5cm);
import tangleSettings;

path pi = (1.5,2){N}..(0.5,2){S}..(0.5,1){S}..{N}(1.5,1);

transform target = xscale(-1);

path disk = (0,0)--(2,0)--(2,1)--(1,1)--(1,2)--(2,2)--(2,3)--(0,3)--cycle;

filldraw(target*disk,backgroundColor,boundaryArc);
drawTangleArc(target*subpath(pi,0,1),"$i$");
drawTangleArc(target*subpath(pi,1,3), doDrawArrow = true);
dot(target*point(pi,0),tangleEndpoint);
dot(target*point(pi,3),tangleEndpoint);
