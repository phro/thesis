size(9cm,0);
import tangleSettings;

pair boxSize = (2,3);
pair gapSize = (2/3,0.5);
pair xingSize = (2/3,0.75);

real gapBottom        = (boxSize.y-gapSize.y)/2;
real gapTop           = (boxSize.y+gapSize.y)/2;
real bottomXingBottom = gapBottom-xingSize.y;
real topXingTop       = gapTop+xingSize.y;

transform rhs = shift(boxSize.x+0.75,0);

path disk =
        (0,0)--
        (boxSize.x,0)--
        (boxSize.x,(boxSize.y-gapSize.y)/2)--
        (boxSize.x,(boxSize.y-gapSize.y)/2)--
        (boxSize.x-gapSize.x,(boxSize.y-gapSize.y)/2)--
        (boxSize.x-gapSize.x,(boxSize.y+gapSize.y)/2)--
        (boxSize.x,(boxSize.y+gapSize.y)/2)--
        (boxSize.x,boxSize.y)--
        (0,boxSize.y)--
        cycle;

drawTangleDisk(disk);
xing((1,gapBottom-xingSize.y),(1+xingSize.x,gapBottom),
        isPositive  = true,
        doDrawArrow = true,
        underLabel  = "$i$"
        );
xing((1,gapTop),(1+xingSize.x,gapTop+xingSize.y),
        isPositive  = false,
        doDrawArrow = true,
        overLabel   = "$j$"
        );
drawTangleArc(((1,topXingTop){N}..(0.25,boxSize.y/2)..{N}(1,bottomXingBottom)));
drawTangleArc(((1+xingSize.x,0)--(1+xingSize.x,bottomXingBottom)));
drawTangleArc(((1+xingSize.x,topXingTop)--(1+xingSize.x,boxSize.y)));
drawTangleArc(((1,gapBottom)--(1,gapTop)));
drawTangleEndpoint((1+xingSize.x,0));
drawTangleEndpoint((1+xingSize.x,boxSize.y));
drawTangleEndpoint((1+xingSize.x,gapBottom));
drawTangleEndpoint((1+xingSize.x,gapTop));

// RHS
drawTangleDisk(rhs*disk);

path c =
        (boxSize.x-gapSize.x/2,gapTop){N}..
        (1,boxSize.y/2)..
        {N}(boxSize.x-gapSize.x/2,gapBottom);
drawTangleArc(rhs*c, "$j$", doDrawArrow = true);
drawTangleEndpoint(rhs*(1+xingSize.x,gapBottom));
drawTangleEndpoint(rhs*(1+xingSize.x,gapTop));

path pi = (0.5,0)--(0.5,boxSize.y);

drawTangleArc(rhs*pi, "$i$", doDrawArrow = true);
drawTangleEndpoint(rhs*(0.5,0));
drawTangleEndpoint(rhs*(0.5,boxSize.y));

label("$=$",((boxSize.x*2 + 0.75)/2,boxSize.y/2));
