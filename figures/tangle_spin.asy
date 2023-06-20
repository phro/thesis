size(2.5cm,0);
import tangleSettings;

path pi = (1.5,2){N}..(0.5,2){S}..(0.5,1){S}..{N}(1.5,1);

path disk =
        (0.25,0.25)--
        (1.75,0.25)--
        (1.75,1   )--
        (1   ,1   )--
        (1   ,2   )--
        (1.75,2   )--
        (1.75,2.75)--
        (0.25,2.75)--
        cycle;

filldraw(disk,backgroundColor,boundaryArc);
drawTangleArc(subpath(pi,0,1),"$i$");
drawTangleArc(subpath(pi,1,3), doDrawArrow = true);
dot(point(pi,0),tangleEndpoint);
dot(point(pi,3),tangleEndpoint);
