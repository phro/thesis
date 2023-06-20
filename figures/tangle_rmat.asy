size(3cm);
import tangleSettings;
filldraw(unitsquare,backgroundColor,boundaryArc);
xing((0.2,0),(0.8,1),
        isPositive = true,
        doDrawArrow = true,
        overLabel = "$i$",
        underLabel = "$j$"
        );
dot((0.2,0),tangleEndpoint);
dot((0.2,1),tangleEndpoint);
dot((0.8,0),tangleEndpoint);
dot((0.8,1),tangleEndpoint);
