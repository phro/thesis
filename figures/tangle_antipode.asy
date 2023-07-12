size(7cm);
import tangleSettings;

pair size = (1,3);
pair extension = (0.5,0.75);
transform rhs = shift(size.x+extension.x+1,0);

path disk = scale(size.x,size.y)*unitsquare;
path disk2 =
        (size.x,-extension.y)--
        (size.x,size.y)--
        (size.x+extension.x,size.y)--
        (size.x+extension.x,size.y+extension.y)--
        (0,size.y+extension.y)--
        (0,0)--
        (-extension.x,0)--
        (-extension.x,-extension.y)--
        (-extension.x,-extension.y)--
        cycle;

path p = (0.5size.x,0)--(0.5size.x,size.y);
path p2 = reverse((-0.5extension.x,0){S}..p..(size.x+0.5extension.x,size.y));

drawTangleDisk(disk);
drawTangleArc(p,"$i$", doDrawArrow=true);
drawTangleEndpoint(point(p,0));
drawTangleEndpoint(point(p,length(p)));

drawTangleDisk(rhs*disk2);
drawTangleArc(rhs*p2,"$i$", arcLabelPos = 0.05, doDrawArrow=true, arrowPos=0.5);
drawTangleEndpoint(rhs*point(p2,0));
drawTangleEndpoint(rhs*point(p2,length(p2)));

draw((size.x+0.25,0.5size.y)--(size.x+1-0.25,0.5size.y),
        boundaryArc,
        arrow=EndArrow(arrowhead=TeXHead),
        L=Label("$S^{i}_{i}$",Relative(0.4),LeftSide)
);
