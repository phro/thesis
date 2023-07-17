size(5cm,0);
import tangleSettings;

pair boxSize = (3,2);
real circleRadius = 0.7*0.5boxSize.y;
real circleGap    = 0.6circleRadius;

path disk = scale(boxSize.x,boxSize.y)*unitsquare;

path   p1 = circle((0.5boxSize.x-circleGap,0.5boxSize.y),circleRadius);
real[] t1 = {0,2,4};

path p2 = reverse(
                circle((0.5boxSize.x+circleGap,0.5boxSize.y),circleRadius)
                );
real[] t2 = {0,2,4};

picture aboveArcs;

drawTangleDisk(disk);

drawTangleArc(subpath(p1,t1[0],t1[1]),
        "$1$",arcLabelPos=0.064
);
drawTangleArc(subpath(p1,t1[1],t1[2]),
        doDrawArrow=true,arrowPos=1,
        aboveArcs
        );

drawTangleArc(subpath(p2,t2[0],t1[1]),
        doDrawArrow=true,arrowPos=1
);
drawTangleArc(subpath(p2,t2[1],t1[2]),
        "$2$",arcLabelPos=0.1,
        aboveArcs
);

add(aboveArcs);

// for(real t : t1) { dot(point(p1,t),yellow); }
// for(real t : t2) { dot(point(p2,t),red); }
