size(11cm);

import tangleSettings;

usepackage("mathtools"); // For \overset

pair size = (5,5);

path disk = scale(size.x,size.y)*unitsquare;

transform flip = rotate(180,0.5size);

transform nudge = shift(-1,0);

transform rhs = shift(size.x+1,0);

path p = nudge*((1.5,0){N}..{E}(3,2)..{N}(5,3)..{W}(4,4)..{S}0.5(7,5));
real[] tp = {0,0.5,1.07,3.5,4};

path q = nudge*(
(2.75,0){N}..
{N}(2.75,4)..
{S}(7-2.75,4)..{S}(7-2.75,1.5)..(5.75,3){N}..{N}(4.5,5));
real [] tq = {0,0.4,0.6,2.2,2.55,4,5};

picture aboveArcs;

drawTangleDisk(disk);
drawTangleArc(     subpath(p,tp[0],tp[1]),"$1$",0.3,aboveArcs);
drawTangleArc(     subpath(p,tp[1],tp[2]),aboveArcs);
drawTangleArc(     subpath(p,tp[2],tp[3]));
drawTangleArc(     subpath(p,tp[3],tp[4]),aboveArcs);
drawTangleArc(flip*reverse(subpath(p,tp[0],tp[1])),true,0.75);
drawTangleArc(flip*subpath(p,tp[1],tp[2]),aboveArcs);
drawTangleArc(flip*subpath(p,tp[2],tp[3]));
drawTangleArc(flip*subpath(p,tp[3],tp[4]),aboveArcs);

drawTangleArc(     subpath(q,tq[0],tq[1]),"$2$",0.25,aboveArcs);
drawTangleArc(     subpath(q,tq[1],tq[2]));
drawTangleArc(     subpath(q,tq[2],tq[3]),aboveArcs);
drawTangleArc(     subpath(q,tq[3],tq[4]));
drawTangleArc(     subpath(q,tq[4],tq[5]),aboveArcs);
drawTangleArc(     subpath(q,tq[5],tq[6]),true);



drawTangleDisk(rhs*scale(size.x,size.y)*unitsquare);

drawTangleArc(rhs*(point(p,0){N}..{N}flip*point(p,0)),
        aboveArcs,
        doDrawArrow=true,
        arcLabelPos=0.1,
        arcLabel="$1$");
drawTangleArc(rhs*(point(q,0){N}..{N}point(q,length(q))), doDrawArrow=true,
        arcLabel="$2$");

add(aboveArcs);

drawTangleEndpoint(point(p,0));
drawTangleEndpoint(flip*point(p,0));
drawTangleEndpoint(point(q,0));
drawTangleEndpoint(point(q,length(q)));

drawTangleEndpoint(rhs*point(p,0));
drawTangleEndpoint(rhs*flip*point(p,0));
drawTangleEndpoint(rhs*point(q,0));
drawTangleEndpoint(rhs*point(q,length(q)));


label((size.x+0.5,0.5size.y),"$\overset{?}{=}$");

// for(real t : tp) {
        // dot(point(p,t),yellow);
        // dot(flip*point(p,t),green);
        // }
// for(real t : tq) { dot(point(q,t),red   ); }
