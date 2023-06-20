size(12cm);
import tangleSettings;

path pi = (4.5,0){N} ..{S}(1.5,2)..{N}(4.5,4);
path pj = (4.5,4.5){N} ..{S}(2.5,4)..{S}(2.5,1.5)..{N}(0.5,2)..(0.5,5.5);

transform target = shift(7,0);

path disk = (0,0)--(5,0)--(5,4)--
        (4,4)--(4,4.5)--(5,4.5)--(5,5.5)--(0,5.5)--(0,2)--cycle;
path disk2 = (0,0)--(5,0)--(5,4)--(5,5.5)--(0,5.5)--(0,2)--cycle;

filldraw(disk,backgroundColor,boundaryArc);
drawTangleArc(subpath(pj,2,4), doDrawArrow = true);
drawTangleArc(subpath(pi,1,2), doDrawArrow = true);
drawTangleArc(subpath(pi,0,1),"$i$");
drawTangleArc(subpath(pj,0,2),"$j$");
dot(point(pi,0),tangleEndpoint);
dot(point(pi,2),tangleEndpoint);
dot(point(pj,0),tangleEndpoint);
dot(point(pj,4),tangleEndpoint);

filldraw(target*disk2,backgroundColor,boundaryArc);
drawTangleArc(target*subpath(pj,2,4), doDrawArrow = true);
drawTangleArc(target*subpath(pi,1,2), doDrawArrow = false);
drawTangleArc(target*((4.5,4)--(4.5,4.5)));
drawTangleArc(target*subpath(pi,0,1),"$k$");
drawTangleArc(target*subpath(pj,0,2));
dot(target*point(pi,0),tangleEndpoint);
dot(target*point(pj,4),tangleEndpoint);

draw((5.5,3)--(6.5,3),
        boundaryArc,
        arrow=EndArrow(arrowhead=TeXHead),
        L=Label("$m^{ij}_{k}$",LeftSide)
);
