pen backgroundColor  = mediumgrey;
pen defaultArcColor  = black;
pen boundaryArcColor = defaultArcColor;
pen tangleArcColor   = defaultArcColor;
pen frontArcColor    = heavygray;

real tangleArcWidth       = 1mm;
real boundaryArcWidth     = 0.5tangleArcWidth;
real frontArcWidth        = 0.5tangleArcWidth;

real tangleEndpointSize   = 2tangleArcWidth;
real frontEndpointSize    = 2frontArcWidth;
real tangleArcShadowScale = 3;
real frontArcShadowScale  = tangleArcShadowScale;
real arrowheadSize        = 3tangleArcWidth;
real diagramGap           = 0.5;

real arcShadowBuffer = 0.1;

pen boundaryArc = boundaryArcColor+boundaryArcWidth;
pen tangleArc = tangleArcColor+tangleArcWidth;
pen frontArc = frontArcColor+frontArcWidth;

pen tangleArcShadow = backgroundColor+(tangleArcWidth*tangleArcShadowScale);
pen frontArcShadow = backgroundColor+(frontArcWidth*frontArcShadowScale);

pen tangleEndpoint = tangleArcColor+linewidth(tangleEndpointSize);
pen frontEndpoint = frontArcColor+linewidth(frontEndpointSize);

void drawTangleDisk(path disk) {
        filldraw(disk,backgroundColor,boundaryArc);
}

void drawTangleEndpoint(pair p) {
        dot(p,tangleEndpoint);
}

void drawFrontEndpoint(pair p) {
        dot(p,frontEndpoint);
}

void drawTangleArc(
        path g,
        bool doDrawArrow=false,
        real arrowPos=0.8,
        string arcLabel = "",
        real arcLabelPos = 0.1,
        picture pic = currentpicture
        ) {
        Label arcLabel = Label(arcLabel, Relative(arcLabelPos), RightSide);
        draw(pic,g,tangleArcShadow,margin=PenMargin(0,0));
        if(doDrawArrow){
                draw(pic,g, L=arcLabel, tangleArc, ArcArrow(
                                        position=arrowPos*length(g),
                                        arrowhead=SimpleHead,
                                        size=arrowheadSize
                                        ));
        } else {
                draw(pic,g, L=arcLabel, tangleArc);
        }
}

void drawFrontArc(path g,bool drawDotted=false) {
        draw(g,frontArcShadow,margin=PenMargins);
        if(drawDotted){
                draw(g,frontArc+linetype(new real[]{0,2})); 
        } else {
                draw(g,frontArc);
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
                drawTangleArc(under, doDrawArrow, arcLabel=underLabel,
                        arrowPos);
                drawTangleArc(over , doDrawArrow, arcLabel=overLabel ,
                        arcLabelPos = 0.175, arrowPos);
        }
        if(!isPositive) {
                drawTangleArc(over , doDrawArrow, arcLabel=underLabel,
                        arcLabelPos = 0.175, arrowPos);
                drawTangleArc(under, doDrawArrow, arcLabel=overLabel ,
                        arrowPos);
        }
}

pair[] pointsFromXing(pair sw, pair ne) {
        return new pair[] {
                sw,
                (ne.x,sw.y),
                ne,
                (sw.x,ne.y)
        };
}

void spin(pair start, pair mid, pair stop, bool doDrawArrow=false,
        string arcLabel = "", real arcLabelPos = 0.1) {
        drawTangleArc(
                start{N}..
                (mid.x,start.y){S}..
                mid{S}..
                (mid.x,stop.y){S}..
                {N}stop
                ,doDrawArrow, 0.5, arcLabel, arcLabelPos);
}

void drawTestGrid(pair size) {
        for(int i = 1; i < size.x; ++i){ 
                for(int j = 1; j < size.y; ++j) {
                        dot((i,j),red);
                }
        }
}
