size(10cm);
import tangleSettings;

real margin = 0.35;
real eps    = 0.15;
real width  = 2;

transform rhs = shift(width+0.5,0);

path disk = scale(2)*unitsquare;

drawTangleDisk(disk);

path over   = (margin,0){N}..{N}(width-margin,2);
path under1 = (width-margin-eps,0){N}..{N}(margin-eps,2);
path under2 = (width-margin+eps,0){N}..{N}(margin+eps,2);

drawTangleArc(under1,true,"$3$");
drawTangleArc(under2,true,"$2$");
drawTangleArc(over,true,"$1$");
drawTangleEndpoint(point(over,0));
drawTangleEndpoint(point(over,1));
drawTangleEndpoint(point(under1,0));
drawTangleEndpoint(point(under1,1));
drawTangleEndpoint(point(under2,0));
drawTangleEndpoint(point(under2,1));

path overNew   = (margin,0){N}..{N}(1,1){N}..{N}(width-margin,2);
path under1New = (1,0){N}..{N}(margin,1)--(margin,2);
path under2New = (width-margin,0)--(width-margin,1){N}..{N}(1,2);

drawTangleDisk(rhs*disk);
drawTangleArc(rhs*under1New,true,"$3$");
drawTangleArc(rhs*under2New,true,0.9,"$2$");
drawTangleArc(rhs*overNew,true,0.9,"$1$");
drawTangleEndpoint(rhs*point(overNew,0));
drawTangleEndpoint(rhs*point(overNew,2));
drawTangleEndpoint(rhs*point(under1New,0));
drawTangleEndpoint(rhs*point(under1New,2));
drawTangleEndpoint(rhs*point(under2New,0));
drawTangleEndpoint(rhs*point(under2New,2));

label("$=$",(width+0.25,2/2));
