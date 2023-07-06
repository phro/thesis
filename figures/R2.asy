size(7cm,0);
import tangleSettings;

transform rhs = shift(1+0.5,0);

filldraw(yscale(2)*unitsquare,backgroundColor,boundaryArc);
xing((0.2,0),(0.8,1),
        isPositive = true,
        doDrawArrow = true
        );
xing((0.2,1),(0.8,2),
        isPositive = false,
        doDrawArrow = true
        );
dot((0.2,0),tangleEndpoint);
dot((0.2,2),tangleEndpoint);
dot((0.8,0),tangleEndpoint);
dot((0.8,2),tangleEndpoint);

filldraw(rhs*yscale(2)*unitsquare,backgroundColor,boundaryArc);
drawTangleArc(rhs*((0.2,0)--(0.2,2)),doDrawArrow = true);
drawTangleArc(rhs*((0.8,0)--(0.8,2)),doDrawArrow = true);
dot(rhs*(0.2,0),tangleEndpoint);
dot(rhs*(0.2,2),tangleEndpoint);
dot(rhs*(0.8,0),tangleEndpoint);
dot(rhs*(0.8,2),tangleEndpoint);

path pi = (3,0){N}..{S}(1,2.5){S}..{N}(3,5);


label("$=$",(1.25,1));
