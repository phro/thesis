pen backgroundColor  = grey;
pen defaultArcColor  = black;
pen boundaryArcColor = defaultArcColor;
pen tangleArcColor   = defaultArcColor;

real boundaryArcWidth     = 0.5mm;
real tangleArcWidth       = 1mm;
real endpointSize         = 2tangleArcWidth;
real tangleArcShadowScale = 3;
real arrowheadSize        = 3tangleArcWidth;
real diagramGap           = 0.5;

real arcShadowBuffer = 0.1;

pen boundaryArc = boundaryArcColor+boundaryArcWidth;
pen tangleArc = tangleArcColor+tangleArcWidth;
pen tangleArcShadow = backgroundColor+(tangleArcWidth*tangleArcShadowScale);
pen tangleEndpoint = linewidth(endpointSize);

void drawTangleDisk(path disk) {
        filldraw(disk,backgroundColor,boundaryArc);
}

void drawTangleEndpoint(pair p) {
        dot(p,tangleEndpoint);
}

void drawTangleArc(
        path g,
        bool doDrawArrow=false,
        real arrowPos=0.8,
        string arcLabel = "",
        real arcLabelPos = 0.1
        ) {
        Label arcLabel = Label(arcLabel, Relative(arcLabelPos), RightSide);
        draw(g,tangleArcShadow,margin=PenMargins);
        if(doDrawArrow){
                draw(g, L=arcLabel, tangleArc, ArcArrow(
                                        position=arrowPos*length(g),
                                        arrowhead=SimpleHead,
                                        size=arrowheadSize
                                        ));
        } else {
                draw(g, L=arcLabel, tangleArc);
        }
}

void xing(
        pair sw,
        pair ne,
        bool isPositive = true,
        string overLabel="",
        string underLabel="",
        bool doDrawArrow = false
        ) {
        path over = sw{N}..{N}ne;
        path under = (ne.x,sw.y){N}..{N}(sw.x,ne.y);
        real arrowPos = 0.8;
        if(isPositive) {
                drawTangleArc(under, arcLabel=underLabel,  doDrawArrow, arrowPos);
                drawTangleArc(over,  arcLabel=overLabel, doDrawArrow, arrowPos);
        } 
        if(!isPositive) {
                drawTangleArc(over,  arcLabel=underLabel,  doDrawArrow, arrowPos);
                drawTangleArc(under, arcLabel=overLabel, doDrawArrow, arrowPos);
        }
}

void spin(pair start, pair mid, pair stop, bool doDrawArrow=false) {
        drawTangleArc(start{N}..mid..{N}stop,doDrawArrow, 0.5);
}
