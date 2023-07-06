size(10cm);

import tangleSettings;

pair size = (2,5);
path disk = scale(size.x,size.y)*unitsquare;
drawTangleDisk(disk);

real margin = 0.25;

xing((margin,1),(1,2));
xing((margin,2),(1,3));
xing((margin,3),(1,4));
spin((1,4),(size.x-margin,0.5size.y),(1,1));
drawTangleArc((margin,0)..(margin,1),true,"$i$",0.3);
drawTangleArc((margin,4)..(margin,5),true);
drawTangleEndpoint((margin,0));
drawTangleEndpoint((margin,5));

transform rhs = shift(size.x+1.5,0);

real nudge          = 0.55;
real eps            = 0.2;
transform nudgeDown = shift(0,-nudge);
transform nudgeUp   = shift(0,nudge);


drawTangleDisk(
        nudgeDown*
        rhs*
        shift(0,1)*
        shift(0,-eps)*
        scale(1+margin,1+eps)*
        unitsquare
);
xing(
        nudgeDown*rhs*(margin,1-eps),
        nudgeDown*rhs*(1,2),
        "$1$",
        "$5$",
        doDrawArrow=true
);
for(pair p : pointsFromXing(
                nudgeDown*rhs*(margin,1-eps),
                nudgeDown*rhs*(1,2)
        )
   ) {
        drawTangleEndpoint(p);
}

drawTangleDisk(rhs*shift(0,2)*xscale(1+margin)*unitsquare);
drawTangleDisk(
        rhs*
        shift(0,2)*
        shift(0,-0.5eps)*
        scale(1+margin,1+eps)*
        unitsquare
);
xing(
        rhs*(margin,2-0.5eps),
        rhs*(1,3+0.5eps),
        "$6$",
        "$2$",
        doDrawArrow=true
);
for(pair p : pointsFromXing(
                rhs*(margin,2-0.5eps),
                rhs*(1,3+0.5eps)
          )
   ) {
        drawTangleEndpoint(p);
}

drawTangleDisk(
        nudgeUp*
        rhs*
        shift(0,3)*
        scale(1+margin,1+eps)*
        unitsquare
);
xing(
        nudgeUp*rhs*(margin,3),
        nudgeUp*rhs*(1,4+eps),
        "$3$",
        "$7$",
        doDrawArrow=true
);
for(pair p : pointsFromXing(
                nudgeUp*rhs*(margin,3),
                nudgeUp*rhs*(1,4+eps)
          )
   ) {
        drawTangleEndpoint(p);
}

drawTangleDisk(rhs*shift(0.75,0)*(
        (1-margin,margin)--
        (2,margin)--
        (2,size.y-margin)--
        (1-margin,size.y-margin)--
        (1-margin,4)--
        (1.5,4)--
        (1.5,1)--
        (1-margin,1)--
        cycle
));
spin(
        shift(0.75,0)*rhs*(1,4),
        shift(0.75,0)*rhs*(size.x-margin,0.5size.y),
        shift(0.75,0)*rhs*(1,1),
        true,
        "$4$"
);
drawTangleEndpoint(shift(0.75,0)*rhs*(1,4));
drawTangleEndpoint(shift(0.75,0)*rhs*(1,1));

draw(shift(size.x+margin,0.5size.y)*(
        (0,0)--(1,0)
     ),boundaryArc,ArcArrow(arrowhead = TeXHead));
