size(10cm,0);
import tangleSettings;

transform rhs = shift(2+0.5)*reflect((1,0),(1,1));

filldraw(scale(2,3)*unitsquare,backgroundColor,boundaryArc);
drawTangleArc((1.75,0)--(1.75,1));
drawTangleArc((1.75,2)--(1.75,3));
drawTangleArc((0.25,1)--(0.25,2));
xing((0.25,0), (1,1));
xing((1,1),(1.75,2));
xing((0.25,2),(1,3));
pair[] dots = {
(0.25,0),
(1   ,0),
(1.75,0),
(0.25,3),
(1   ,3),
(1.75,3)
};
dot(dots,tangleEndpoint);

filldraw(rhs*scale(2,3)*unitsquare,backgroundColor,boundaryArc);
drawTangleArc(rhs*((1.75,0)--(1.75,1)));
drawTangleArc(rhs*((1.75,2)--(1.75,3)));
drawTangleArc(rhs*((0.25,1)--(0.25,2)));
xing(rhs*(0.25,0),rhs*(1,1)   ,isPositive = false);
xing(rhs*(1,1),   rhs*(1.75,2),isPositive = false);
xing(rhs*(0.25,2),rhs*(1,3)   ,isPositive = false);
dot(rhs*dots,tangleEndpoint);

label("$=$",(2.25,1.5));
