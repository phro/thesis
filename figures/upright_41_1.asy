size(5cm);

import tangleSettings;

pair size = (5,8);
path disk = scale(size.x,size.y)*unitsquare;
transform flip = rotate(180,0.5size);

drawTangleDisk(disk);

real startx = 3.2;
pair[] a = {(startx,0),(startx,2.5),(startx,5.5),(size.x-startx,6.5),(2/3,5.5),0.5size};

path p1 =
        (a[0]){N}..
        (a[1]){N}..
        (a[2]){N}..
        {W}a[3]..
        {S}a[4]..
        a[5]..
        {S}flip*a[4]..
        {W}flip*a[3]..
        {N}flip*a[2]..
        {N}flip*a[1]..
        {N}flip*a[0];

real[] t = {0,1,2,4,5};
real reverseParams(real t) {return length(p1)-t;}
real[] t2 = reverse(map(reverseParams,t));
t.pop();
t.append(t2);

picture aboveArcs;

drawTangleArc(subpath(p1,t[ 0],t[ 1]) ,false,aboveArcs);
drawTangleArc(subpath(p1,t[ 1],t[ 2]) ,true);
drawTangleArc(subpath(p1,t[ 2],t[ 3]) ,false,aboveArcs);
drawTangleArc(subpath(p1,t[ 3],t[ 4]) ,false);
drawTangleArc(subpath(p1,t[ 4],t[ 5]) ,true,aboveArcs);
drawTangleArc(subpath(p1,t[ 5],t[ 6]) ,false);
drawTangleArc(subpath(p1,t[ 6],t[ 7]) ,true,0.9,aboveArcs);
drawTangleArc(subpath(p1,t[ 7],t[ 8]) ,false);

add(aboveArcs);

real frontHeight = 1;

drawFrontArc((0,frontHeight)--(size.x,frontHeight));
drawFrontEndpoint((0,frontHeight));
drawFrontEndpoint((size.x,frontHeight));


drawTangleEndpoint(point(p1,0));
drawTangleEndpoint(point(p1,length(p1)));

// drawTestGrid(size);
// for(real t: t) {
        // dot(point(p1,t),yellow+linewidth(2mm));
// }
// dot(a,green);
// dot(flip*a,lightgreen);
