size(5cm);

import tangleSettings;

pair size = (5,8);
path disk = scale(size.x,size.y)*unitsquare;
transform flip = rotate(180,0.5size);

drawTangleDisk(disk);

path p1 = (3.25,0){N}..{W}(1.5,6.5)..{E}0.5size;
real[] t = {0,0.3,0.8,1.6,2};

drawTangleArc(identity*    subpath(p1,t[1],t[2]) ,false);

drawTangleArc(identity*    subpath(p1,t[3],t[4]) ,false);
drawTangleArc(flip*reverse(subpath(p1,t[0],t[1])),false);
drawTangleArc(flip*reverse(subpath(p1,t[1],t[2])),true,0.5);
drawTangleArc(flip*reverse(subpath(p1,t[2],t[3])),false);
drawTangleArc(flip*reverse(subpath(p1,t[3],t[4])),false);

drawTangleArc(identity*    subpath(p1,t[2],t[3]) ,true);
drawTangleArc(identity*    subpath(p1,t[0],t[1]) ,true,0.9);

real frontHeight = 0.7;

drawFrontArc((0,frontHeight)--(size.x,frontHeight));
drawFrontEndpoint((0,frontHeight));
drawFrontEndpoint((size.x,frontHeight));

drawTangleEndpoint(point(p1,0));
drawTangleEndpoint(point(flip*p1,0));
