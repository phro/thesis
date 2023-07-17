size(4cm,0);
import tangleSettings;

real margin = 0.4;
pair boxSize = (3,5);
pair cutout = (boxSize.x/3,1.2);
pair panhandle = (boxSize.x/3,0.4cutout.y);

path disk = 
        (cutout.x,0)--
        (boxSize.x,0)--
        (boxSize.x,boxSize.y)--
        (0,boxSize.y)--
        (0,cutout.y)--
        (cutout.x+panhandle.x,cutout.y)--
        (cutout.x+panhandle.x,cutout.y-panhandle.y)--
        (cutout.x,cutout.y-panhandle.y)--
        cycle;


/* path pi =
        (boxSize.x-0.5grooveSize.x,0){N}..{S}
        (1.5,2)..{N}
        (boxSize.x-0.5grooveSize.x,boxSize.y-grooveSize.y-grooveOffset);
real [] ti = {0,0.5,1,1.5,2}; */

drawTangleDisk(disk);

picture aboveArcs;
xing(
        (margin,cutout.y),
        (cutout.x+panhandle.x-margin,cutout.y+(boxSize.y-cutout.y)/3),
        doDrawArrow=true
);
xing(
        (margin,cutout.y+(boxSize.y-cutout.y)/3),
        (cutout.x+panhandle.x-margin,cutout.y+2(boxSize.y-cutout.y)/3),
        "$2$",
        "$1$"
);
spin(
        (cutout.x+panhandle.x-margin,cutout.y+2(boxSize.y-cutout.y)/3),
        (boxSize.x-margin,cutout.y+(boxSize.y-cutout.y)/3),
        (cutout.x+panhandle.x-margin,cutout.y-panhandle.y),
        doDrawArrow=true
);

drawTangleArc(
                (margin,cutout.y+2(boxSize.y-cutout.y)/3)--
                (margin,boxSize.y),
                arrowPos=0.5,
                doDrawArrow=true
);

add(aboveArcs);

drawTangleEndpoint((margin,cutout.y));
drawTangleEndpoint((cutout.x+panhandle.x-margin,cutout.y));
drawTangleEndpoint((cutout.x+panhandle.x-margin,cutout.y-panhandle.y));
drawTangleEndpoint((margin,boxSize.y));


// for(real t : ti) {
        // dot(point(pi,t),yellow);
        // }
// for(real t : tj) { dot(point(pj,t),red ); }

