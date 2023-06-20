size(5cm);
import tangleSettings;
filldraw(yscale(2)*unitsquare,backgroundColor,boundaryArc);
xing((0.2,0),(0.8,1),
        isPositive = true,
        doDrawArrow = true,
        overLabel = "$1$",
        underLabel = "$2$"
        );
xing((0.2,1),(0.8,2),
        isPositive = true,
        doDrawArrow = true
        );
dot((0.2,0),tangleEndpoint);
dot((0.2,2),tangleEndpoint);
dot((0.8,0),tangleEndpoint);
dot((0.8,2),tangleEndpoint);
