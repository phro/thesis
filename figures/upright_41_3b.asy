size(5cm);

import tangleSettings;

pair size = (5,8);
path disk = shift(0,-1-1.5)*scale(2+size.x,1+1.5+size.y)*unitsquare;
transform flip = rotate(180,0.5size);

drawTangleDisk(disk);

real startx = 3.2;
pair[] a = {(startx,0),(startx,2.5),(startx,5.5),(size.x-startx,6.5),(2/3,5.5),0.5size};

real frontHeight = 2.5;

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

path p2 = 
        (flip*a[4]){N}..
        (2/3,5.5){S}..
        (startx,2.5){S}
        ;
path p3 =
        flip*a[2]..
        flip*a[0];

path p4 =
        (5.2,frontHeight){N}..{S}(6.5,frontHeight);

real[] t = {0,1,2,4,5};
real reverseParams(real t) {return length(p1)-t;}
real[] tt = reverse(map(reverseParams,t));
t.pop();
t.append(tt);

real[] t2 = {0,1,2};
real[] t3 = {0,0.5,1};

picture aboveArcs;


// drawTangleArc(subpath(p1,t[ 0],t[ 1]) ,false,aboveArcs);
// drawTangleArc(subpath(p1,t[ 1],t[ 2]) ,false);
// drawTangleArc(subpath(p1,t[ 2],t[ 3]) ,false,aboveArcs);
// drawTangleArc(subpath(p1,t[ 3],t[ 4]) ,false);
// drawTangleArc(subpath(p1,t[ 4],t[ 5]) ,false,aboveArcs);
// // drawTangleArc(subpath(p1,t[ 5],t[ 6]) ,false);
// drawTangleArc(subpath(p1,t[ 6],t[ 7]) ,true,0.9,aboveArcs);
// drawTangleArc(subpath(p1,t[ 7],t[ 8]) ,false);

drawTangleArc(subpath(p2,t2[0],t2[1]),true,0.3,aboveArcs);
drawTangleArc(subpath(p2,t2[1],t2[2]));
drawTangleArc(subpath(p3,t3[0],t3[1]),aboveArcs);
drawTangleArc(subpath(p3,t3[1],t3[2]));
drawTangleArc(p4);


drawTangleArc((startx,2.5){S}..{N}(5.2,frontHeight),aboveArcs);

transform slidedown = shift(0,-1.5);

drawTangleArc((5.2,1){N}..{N}flip*a[4]);
drawTangleArc(((flip*a[0]).x,1)..flip*a[2]);
drawTangleArc((6.5,frontHeight)..(6.5,1));

xing(slidedown*((flip*a[0]).x,0.5),(5.2,1));
drawTangleArc(slidedown*(
        (6.5,2.5){S}..{N}(5.2,0.5)),
        true,0.2);
drawTangleArc(slidedown*(((flip*a[0]).x,-1)--((flip*a[0]).x,0.5)));
drawTangleEndpoint(slidedown*(((flip*a[0]).x,-1)));

add(aboveArcs);


drawFrontArc((0,frontHeight){E}--(size.x+2,frontHeight));
drawFrontEndpoint((0,frontHeight));
drawFrontEndpoint((2+size.x,frontHeight));

drawTangleEndpoint(point(p1,length(p1)));

// drawTestGrid(size);
// for(real t: t) {
        // dot(point(p1,t),yellow+linewidth(2mm));
// }
// dot(a,green);
// dot(flip*a,lightgreen);
