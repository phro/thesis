size(5cm,0);
import tangleSettings;

pair boxdim     = (5,4);
real pathBuffer = 0.25;
real channelBuffer = 2pathBuffer;

pair pathStart  = (2  ,2);
pair pathTop    = (3.5,3.5 );
pair pathSide   = (4.5,2   );
pair pathBottom = (4  ,0.5 );
pair pathEnd    = (2  ,1.5);

pair dualPoint(pair p) {
        return (boxdim.x-p.x,p.y);
}

transform flip = reflect((0,0),(1,0));

path pi =reverse(
        pathStart{N}..
        pathTop..
        {S}pathSide{S}..
        pathBottom..
        dualPoint(pathEnd)..
        dualPoint(pathStart)..
        dualPoint(pathTop)..
        {S}dualPoint(pathSide){S}..
        dualPoint(pathBottom)..
        {N}pathEnd
);

path disk =
        (0,0)--
        (pathEnd.x + pathBuffer,0)--
        (pathEnd.x + pathBuffer,pathEnd.y)--
        (pathEnd.x - pathBuffer,pathEnd.y)--
        (pathEnd.x - pathBuffer,pathStart.y)--
        (pathEnd.x + pathBuffer+channelBuffer,pathStart.y)--
        (pathEnd.x + pathBuffer+channelBuffer,0)--
        (boxdim.x,0       )--
        (boxdim.x,boxdim.y)--
        (0       ,boxdim.y)--
        cycle;

filldraw(flip*disk,backgroundColor,boundaryArc);
drawTangleArc(flip*subpath(pi,0,5),"$i$");
drawTangleArc(flip*subpath(pi,2,8), doDrawArrow = false);
drawTangleArc(flip*subpath(pi,8,length(pi)), doDrawArrow = true);
dot(flip*point(pi,0),tangleEndpoint);
dot(flip*point(pi,length(pi)),tangleEndpoint);
