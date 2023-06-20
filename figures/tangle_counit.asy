size(12cm);
import tangleSettings;

path p = (0,0){N} ..{S}(-1,1)..{N}(0,2);
real eps = 0.20;
path p1 = (eps,0){N} ..{S}(-1-eps,1)..{N}(eps,2);
path p2 = (0,0){N} ..{S}(-1,1)..{N}(0,2);

path q = (-0.7,0)--(-0.7,2);

filldraw(shift((-1.4,0))*scale(2,2)*unitsquare,backgroundColor,boundaryArc);
drawTangleArc(subpath(q,0,0.5),"$j$");
drawTangleArc(subpath(p,1,2));
drawTangleArc(subpath(p,0,1),"$i$");
drawTangleArc(subpath(q,0.5,1));
dot((0,0),tangleEndpoint);
dot((0,2),tangleEndpoint);
dot((-0.7,0),tangleEndpoint);
dot((-0.7,2),tangleEndpoint);

filldraw(shift((1.8,0))*scale(2,2)*unitsquare,backgroundColor,boundaryArc);
drawTangleArc(shift(3.2,0)*subpath(q,0,0.5),"$j$");
drawTangleArc(shift(3.2,0)*subpath(q,0.5,1));
dot(shift(3.2,0)*(-0.7,0),tangleEndpoint);
dot(shift(3.2,0)*(-0.7,2),tangleEndpoint);

draw((0.8,1)--(1.7,1),boundaryArc,arrow=EndArrow(arrowhead=TeXHead),L=Label("$\epsilon^{i}$",LeftSide));
