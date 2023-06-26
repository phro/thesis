size(7cm);

import tangleSettings;

pair size = (7,5);

path disk = scale(size.x,size.y)*unitsquare;

pair eSize = (0.3size.x,0.7size.y);

path p1 =
        (size.x/3,0)--(size.x/3,size.y);

real[] t1 = {0,0.5,length(p1)};

path p2 =
        (size.x/2,0.5size.y){N}..
        (size.x/6,0.5size.y){S}..
        cycle
        ;

real[] t2 = {0,0.35,1,1.65,length(p2)};

path p3 =
        ((3/4)*size.x,0){N}..
        ((5/12)*size.x,0.5size.y){S}..
        ((3/4)*size.x,size.y){N}
        ;

real[] t3 = {0,0.3,0.5,1,1.5,length(p3)};

picture aboveArcs;

drawTangleDisk(disk);

drawTangleArc(subpath(p1,t1[0],t1[1]),aboveArcs);
drawTangleArc(subpath(p1,t1[1],t1[2]),true);

drawTangleArc(subpath(p2,t2[0],t2[1]));
drawTangleArc(subpath(p2,t2[1],t2[2]),true,aboveArcs);
drawTangleArc(subpath(p2,t2[2],t2[3]));
drawTangleArc(subpath(p2,t2[3],t2[4]),aboveArcs);

drawTangleArc(subpath(p3,t3[0],t3[1]));
drawTangleArc(subpath(p3,t3[1],t3[2]));
drawTangleArc(subpath(p3,t3[2],t3[3]),aboveArcs);
drawTangleArc(subpath(p3,t3[3],t3[4]));
drawTangleArc(subpath(p3,t3[4],t3[5]),true,aboveArcs);

drawTangleEndpoint(point(p1,0));
drawTangleEndpoint(point(p3,0));
drawTangleEndpoint(point(p1,length(p1)));
drawTangleEndpoint(point(p3,length(p3)));

add(aboveArcs);

// for(real t : t1) { dot(point(p1,t),red   ); }
// for(real t : t2) { dot(point(p2,t),yellow); }
// for(real t : t3) { dot(point(p3,t),blue  ); }
