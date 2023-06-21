size(9cm,0);
import tangleSettings;

pair diskSize = (7,6);

drawTangleDisk(scale(diskSize.x,diskSize.y)*unitsquare);
xing((3,2.5),(4,3.5));

path nw = (3,3.5){N}..(2.5,4)..{S}(2,3)..{E}(4.5,1)..{N}(6,3)..(6,6);
path ne = (4,3.5){N}..{W}(2.5,4.5)..{S}(1.5,3)..{E}(4.5,0.5)..{N}(6.5,3)..(6.5,6);

transform spin = rotate(180,0.5diskSize);

drawTangleArc(nw,doDrawArrow=true);
drawTangleArc(ne,doDrawArrow=true);
drawTangleArc(spin*reverse(nw),"$j$");
drawTangleArc(spin*reverse(ne),"$i$");
drawTangleEndpoint(point(nw,length(nw)));
drawTangleEndpoint(point(ne,length(ne)));
drawTangleEndpoint(spin*point(nw,length(nw)));
drawTangleEndpoint(spin*point(ne,length(ne)));

for(int i = 1; i < diskSize.x; ++i)
for(int j = 1; j < diskSize.y; ++j)
        // dot((i,j),red);
        return;

transform rhs = shift(diskSize.x+1,0);

drawTangleDisk(rhs*scale(2,diskSize.y)*unitsquare);
xing(rhs*(0.5,2.5),rhs*(1.5,3.5));
drawTangleArc(rhs*((0.5,0)--(0.5,2.5)),"$i$");
drawTangleArc(rhs*((1.5,0)--(1.5,2.5)),"$j$");
drawTangleArc(rhs*((0.5,3.5)--(0.5,diskSize.y)),doDrawArrow = true);
drawTangleArc(rhs*((1.5,3.5)--(1.5,diskSize.y)),doDrawArrow = true);
drawTangleEndpoint(rhs*(0.5,0));
drawTangleEndpoint(rhs*(1.5,0));
drawTangleEndpoint(rhs*(0.5,diskSize.y));
drawTangleEndpoint(rhs*(1.5,diskSize.y));

label("$=$",(diskSize.x+0.5,0.5diskSize.y));
