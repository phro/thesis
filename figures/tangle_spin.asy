size(5cm);
import tangleSettings;

path pi = (1.5,2){N}..(0.5,2){S}..(0.5,1){S}..{N}(1.5,1);

path disk = (0,0)--(2,0)--(2,1)--(1,1)--(1,2)--(2,2)--(2,3)--(0,3)--cycle;

filldraw(disk,backgroundColor,boundaryArc);
drawTangleArc(subpath(pi,0,1),"$i$");
drawTangleArc(subpath(pi,1,3), doDrawArrow = true);
dot(point(pi,0),tangleEndpoint);
dot(point(pi,3),tangleEndpoint);
