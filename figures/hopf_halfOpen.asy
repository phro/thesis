size(4cm,0);
import tangleSettings;

real margin = 0.4;
pair boxSize = (3,5);
pair cutout = (boxSize.x/3,1);
pair panhandle = (boxSize.x/3,0.4cutout.y);

path disk = scale(boxSize.x,boxSize.y)*unitsquare;

drawTangleDisk(disk);

picture aboveArcs;
xing(
        (margin,cutout.y),
        (cutout.x+panhandle.x-margin,cutout.y+(boxSize.y-cutout.y)/3),
        doDrawArrow=true,
        underLabel="$2$"
);
xing(
        (margin,cutout.y+(boxSize.y-cutout.y)/3),
        (cutout.x+panhandle.x-margin,cutout.y+2(boxSize.y-cutout.y)/3)
);
spin(
        (cutout.x+panhandle.x-margin,cutout.y+2(boxSize.y-cutout.y)/3),
        (boxSize.x-margin,cutout.y+(boxSize.y-cutout.y)/3),
        (cutout.x+panhandle.x-margin,cutout.y),
        doDrawArrow=true
);

drawTangleArc(
                (margin,cutout.y+2(boxSize.y-cutout.y)/3)--
                (margin,boxSize.y),
                arrowPos=0.5,
                doDrawArrow=true
);

drawTangleArc(
        (margin,0)--
        (margin,cutout.y),
        arcLabelPos=0.5,
        "$1$"
);

add(aboveArcs);

drawTangleEndpoint((margin,0));
drawTangleEndpoint((margin,boxSize.y));


// for(real t : ti) {
        // dot(point(pi,t),yellow);
        // }
// for(real t : tj) { dot(point(pj,t),red ); }

