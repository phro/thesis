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

drawTangleDisk(shift(0,-0.5)*rhs*shift(0,1)*xscale(1.25)*unitsquare);
xing(
        shift(0,-0.5)*rhs*(margin,1),
        shift(0,-0.5)*rhs*(1,2),
        "$1$",
        "$5$",
        doDrawArrow=true
);
for(pair p : pointsFromXing(
                shift(0,-0.5)*rhs*(margin,1),
                shift(0,-0.5)*rhs*(1,2)
        )
   ) {
        drawTangleEndpoint(p);
}

drawTangleDisk(rhs*shift(0,2)*xscale(1.25)*unitsquare);
xing(
        rhs*(margin,2),
        rhs*(1,3),
        "$6$",
        "$2$",
        doDrawArrow=true
);
for(pair p : pointsFromXing(
                rhs*(margin,2),
                rhs*(1,3)
          )
   ) {
        drawTangleEndpoint(p);
}

drawTangleDisk(shift(0,0.5)*rhs*shift(0,3)*xscale(1.25)*unitsquare);
xing(
        shift(0,0.5)*rhs*(margin,3),
        shift(0,0.5)*rhs*(1,4),
        "$3$",
        "$7$",
        doDrawArrow=true
);
for(pair p : pointsFromXing(
                shift(0,0.5)*rhs*(margin,3),
                shift(0,0.5)*rhs*(1,4)
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
     ),boundaryArc,ArcArrow(arrowhead = SimpleHead));
