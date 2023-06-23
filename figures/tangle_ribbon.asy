size(7cm,0);
import tangleSettings;

path pi = (3,0){N}..{S}(1,2.5){S}..{N}(3,5);

transform rhs = shift(4+2,0);
transform flip = reflect((2,0),(2,1));

filldraw(scale(4,5)*unitsquare,backgroundColor,boundaryArc);
drawTangleArc(subpath(pi,1,2),doDrawArrow = true);
drawTangleArc(subpath(pi,0,1),"$i$");
dot(point(pi,0),tangleEndpoint);
dot(point(pi,length(pi)),tangleEndpoint);

filldraw(rhs*scale(4,5)*unitsquare,backgroundColor,boundaryArc);
drawTangleArc(rhs*flip*subpath(pi,0,1),"$i$");
drawTangleArc(rhs*flip*subpath(pi,1,2),doDrawArrow = true);
dot(rhs*flip*point(pi,0),tangleEndpoint);
dot(rhs*flip*point(pi,length(pi)),tangleEndpoint);

label("$=$",(5,2.5));
