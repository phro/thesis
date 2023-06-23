size(7cm);

import tangleSettings;

pair size = (7,5);

path disk = scale(size.x,size.y)*unitsquare;

transform flip = rotate(180,0.5size);

path p = (0.75,0){N}..{E}(1.5,2)..(3,2)..{N}(5,3)..{W}(4,4)..{S}0.5size;
path q =
(2.75,0){N}..
{N}(2.75,4)..
{S}(size.x-2.75,4)..{S}(size.x-2.75,1.5)..(5.5,1.5){N}..{N}(5.5,5);

drawTangleDisk(disk);
drawTangleArc(     subpath(q,0.4,0.6));
drawTangleArc(     subpath(q,2.2,2.6));
drawTangleArc(     subpath(p,2.1,3));
drawTangleArc(flip*subpath(p,2.1,3));
drawTangleArc(     subpath(p,3,5));
drawTangleArc(flip*subpath(p,3,5));
drawTangleArc(     subpath(p,0,2.1),"$1$");
drawTangleArc(flip*reverse(subpath(p,0,2.1)),true,0.9);
drawTangleArc(     subpath(q,4,5),true);
drawTangleArc(     subpath(q,2.6,4));
drawTangleArc(     subpath(q,0.6,2.2));
drawTangleArc(     subpath(q,0,0.4),"$2$",0.25);
drawTangleEndpoint(point(p,0));
drawTangleEndpoint(flip*point(p,0));
drawTangleEndpoint(point(q,0));
drawTangleEndpoint(point(q,length(q)));
