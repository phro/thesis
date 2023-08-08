size(5cm,0);

import tangleSettings;

real margin  = 0.4;
pair boxSize = (5,10);

real[] posx = {
        boxSize.x-3,
        boxSize.x-2,
        boxSize.x-2,
        boxSize.x-1,
        boxSize.x-margin,
        boxSize.x-3.3,
        boxSize.x-2};
real[] posy = {2,3,3,4,5,6,8,9};

path disk = scale(boxSize.x,boxSize.y)*unitsquare;
path disk =
        (0,0)--
        (boxSize.x,0)--
        (boxSize.x,posy[5])--
        (0.5posx[3]+0.5posx[4],posy[5])--
        (0.5posx[3]+0.5posx[4],posy[5]+1)--
        (boxSize.x,posy[5]+1)--
        (boxSize.x,boxSize.y)--
        (0,boxSize.y)--
        cycle;

drawTangleDisk(disk);

picture aboveArcs;
xing(// Xm 1 6
        (posx[3],posy[2]),
        (posx[4],posy[3]),
        isPositive = false
);
xing(// Xp 9 2
        (posx[2],posy[3]),
        (posx[3],posy[4]),
        isPositive = true
);
xing(// Xp 3 8
        (posx[0],posy[0]),
        (posx[1],posy[1]),
        isPositive = true
);
xing(// Xm 7 10
        (posx[3],posy[4]),
        (posx[4],posy[5]),
        isPositive = false
);
xing(// Xm 5 4
        (posx[5],posy[6]),
        (posx[6],posy[7]),
        isPositive = false
);
spin(// C 6
        (posx[5],posy[7]),
        (posx[0]-4margin,posy[1]),
        (posx[3],posy[0])
);
spin(// C 8
        (posx[3],posy[5]),
        (posx[0]-2margin,posy[1]),
        (posx[1],posy[0])
);
spin(// C 3
        (posx[2],posy[4]),
        (posx[0]-margin,posy[1]),
        (posx[0],posy[0])
);
spin(// Ci 4
        (posx[1],posy[1]),
        (0.5posx[1]+0.5posx[3],posy[1]),
        (posx[0]-3margin,posy[0])
);
drawTangleArc((posx[0],posy[1]){N}..{N}(posx[2],posy[3]));
drawTangleArc((posx[4],posy[3]){N}..{N}(posx[4],posy[4]));
drawTangleArc(
        (posx[0]-3margin,posy[0]){N}..
        (posx[0]-3margin,0.7posy[5]+0.3posy[6]){N}..{N}
        (posx[5],posy[6])
);
drawTangleArc((posx[4],0)--(posx[4],posy[2]));                          // 1
drawTangleArc(                                                          // 4+
        (posx[6],posy[7])--(posx[6],boxSize.y),
        doDrawArrow = true
);
drawTangleArc((boxSize.x-margin,posy[5]+1){N}..{N}(posx[6],posy[6]));   // 5
drawTangleArc((posx[3],posy[0])--(posx[3],posy[2]));                    // 6
drawTangleArc(                                                          // 7
        (posx[4],posy[3]){N}..{N}(posx[4],posy[4]),
        doDrawArrow=true
);

drawTangleEndpoint((posx[4],0));
drawTangleEndpoint((posx[4],posy[5]));
drawTangleEndpoint((posx[4],posy[5]+1));
drawTangleEndpoint((posx[6],boxSize.y));
