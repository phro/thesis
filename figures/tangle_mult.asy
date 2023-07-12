size(12cm);
import tangleSettings;

real eps = 0.5;
pair boxSize = (5,5-eps);
pair grooveSize = (1,0.5);
real grooveOffset = 1.5-eps;

path pi =
        (boxSize.x-0.5grooveSize.x,0){N}..{S}
        (1.5,2)..{N}
        (boxSize.x-0.5grooveSize.x,boxSize.y-grooveSize.y-grooveOffset);
real [] ti = {0,0.5,1,1.5,2};

path pj =
        (boxSize.x-0.5grooveSize.x,boxSize.y-grooveOffset){N}..{S}
        // (2.5,boxSize.y-grooveOffset)..{S}
        (2.5,3)..{N}
        (0.5,2)..
        (0.5grooveSize.x,boxSize.y);
real [] tj = {0,1.2,4};

transform rhs = shift(boxSize.x+1.5,0);

path disk = 
        (0,                     0                                  )--
        (boxSize.x,             0                                  )--
        (boxSize.x,             boxSize.y-grooveSize.y-grooveOffset)--
        (boxSize.x-grooveSize.x,boxSize.y-grooveSize.y-grooveOffset)--
        (boxSize.x-grooveSize.x,boxSize.y-grooveOffset             )--
        (boxSize.x,             boxSize.y-grooveOffset             )--
        (boxSize.x,             boxSize.y                          )--
        (0,                     boxSize.y                          )--
        cycle;
path disk2 = scale(boxSize.x,boxSize.y)*unitsquare;

picture aboveArcs;

drawTangleDisk(disk);
drawTangleArc(subpath(pi,ti[0],ti[1]),"$i$",aboveArcs);
drawTangleArc(subpath(pi,ti[1],ti[2]));
drawTangleArc(subpath(pi,ti[2],ti[3]),aboveArcs);
drawTangleArc(subpath(pi,ti[3],ti[4]),doDrawArrow=true);
drawTangleArc(subpath(pj,tj[0],tj[1]),"$j$");
drawTangleArc(subpath(pj,tj[1],tj[2]),doDrawArrow=true);

drawTangleDisk(rhs*disk2);
drawTangleArc(rhs*subpath(pi,ti[0],ti[1]),"$k$",aboveArcs);
drawTangleArc(rhs*subpath(pi,ti[1],ti[2]));
drawTangleArc(rhs*subpath(pi,ti[2],ti[3]),aboveArcs);
drawTangleArc(rhs*subpath(pi,ti[3],ti[4]),doDrawArrow=true);
drawTangleArc(rhs*subpath(pj,tj[0],tj[1]));
drawTangleArc(rhs*subpath(pj,tj[1],tj[2]),doDrawArrow=true);
drawTangleArc(rhs*(
        (boxSize.x-0.5grooveSize.x,boxSize.y-grooveSize.y-grooveOffset)--
        (boxSize.x-0.5grooveSize.x,boxSize.y-grooveOffset)
));

add(aboveArcs);

drawTangleEndpoint(point(pi,0));
drawTangleEndpoint(point(pi,length(pi)));
drawTangleEndpoint(point(pj,0));
drawTangleEndpoint(point(pj,length(pj)));

drawTangleEndpoint(rhs*point(pi,0));
drawTangleEndpoint(rhs*point(pj,4));

draw((boxSize.x+0.25,0.5boxSize.y)--(boxSize.x+1.5-0.25,0.5boxSize.y),
        boundaryArc,
        arrow=EndArrow(arrowhead=TeXHead),
        L=Label("$m^{ij}_{k}$",LeftSide)
);
// for(real t : ti) {
        // dot(point(pi,t),yellow);
        // }
// for(real t : tj) { dot(point(pj,t),red   ); }
