size(7cm);

import tangleSettings;

pair size = (7,5);

path disk = scale(size.x,size.y)*unitsquare;

pair eSize = (0.3size.x,0.7size.y);

path pe =
        (0.5size.x,0){N}..
        (0.5size.x-0.5eSize.x,0.5(size.y-eSize.y)){W}..
        (0.5size.x-eSize.x,0.5(size.y-eSize.y) + 0.3eSize.y){N}..
        (0.5size.x,0.5size.y){S}..
        (0.5size.x-eSize.x,size.y-(0.5(size.y-eSize.y) + 0.3eSize.y)){N}..
        (0.5size.x-0.5eSize.x,size.y-0.5(size.y-eSize.y)){E}..
        (0.5size.x,size.y){N}
        ;
real[] te = {0,2.5,3.25,3.7,6};

path pj =
        (0.6size.x,0){N}..
        (0.4size.x,0.4size.y){S}..
        (0.6size.x,0.1size.y){E}..
        (0.75size.x,size.y){N};

real[] tj = {0,0.2,0.9,1.5,3};

picture aboveArcs;

drawTangleDisk(disk);
drawTangleArc(subpath(pj,tj[0],tj[1]));
drawTangleArc(subpath(pj,tj[1],tj[2]),aboveArcs);
drawTangleArc(subpath(pj,tj[2],tj[3]));
drawTangleArc(subpath(pj,tj[3],tj[4]),true,aboveArcs);

drawTangleArc(subpath(pe,te[0],te[1]),aboveArcs);
drawTangleArc(subpath(pe,te[1],te[2]));
drawTangleArc(subpath(pe,te[2],te[3]));
drawTangleArc(subpath(pe,te[3],te[4]),true);

drawTangleEndpoint(point(pe,0));
drawTangleEndpoint(point(pj,0));
drawTangleEndpoint(point(pe,length(pe)));
drawTangleEndpoint(point(pj,length(pj)));

add(aboveArcs);

// for(real t : te) { dot(point(pe,t),yellow); }
// for(real t : tj) { dot(point(pj,t),red   ); }

