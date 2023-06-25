size(9cm,0);
import tangleSettings;

pair size = (2,2);
real margin = 0.25;

drawTangleDisk(scale(size.x,size.y)*unitsquare);

drawTangleArc(
        (margin,0){N}..
        {N}(margin,1)..
        (size.x-margin,1){S}..
        {S}(size.x-margin,margin),
        true,
        0.5
);

drawTangleEndpoint((margin,0));
drawTangleEndpoint((size.x-margin,margin));
drawFrontArc((0,1)--(size.x,1));

transform rhs = shift(size.x+0.5,0);

drawTangleDisk(rhs*scale(size.x,size.y)*unitsquare);

drawTangleArc(rhs*(
         (margin,0){N}..
         {N}(margin,margin)..
         (size.x-margin,margin){S}..
         {S}(size.x-margin,margin)),
         true,
         0.5
);

drawTangleEndpoint(rhs*(margin,0));
drawTangleEndpoint(rhs*(size.x-margin,margin));
drawFrontArc(rhs*((0,1+margin)--(size.x,1+margin)));

draw(shift(size.x+margin/2,0.5size.y)*((0,0)--(0.25,0)),boundaryArc,EndArrow(arrowhead
= SimpleHead));
