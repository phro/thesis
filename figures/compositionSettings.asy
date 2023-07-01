real lineGap = 0.2;
real domHeight = 0.6;
real morphHeight = 0.7;
pen domPen    = linewidth(0.2mm);
pen domBoxPen = linewidth(0.3mm);
pen morphPen  = linewidth(0.5mm);

void drawFibres(pair sw, pair ne,string label = "") {
        real width  = ne.x-sw.x;
        real height = ne.y-sw.y;
        real lineCount = floor(width/lineGap)-1;
        real margin = 0.5(width - lineGap*(lineCount-1));
        real start = sw.x + margin;
        for(int i = 0; i < lineCount; ++i) {
                draw((start+lineGap*i,sw.y)--(start+lineGap*i,ne.y),domPen,
                        EndArrow(position=0.9,arrowhead=TeXHead)
                );
        }
        real domainHeight = min(0.3,0.5height);
        filldraw(
                shift(start-0.5margin,sw.y+0.5(height-domainHeight))*
                yscale(domainHeight)*
                xscale(width-margin)*
                unitsquare,
                lightgrey,
                domBoxPen
        );
        label(label,sw+0.5(width,height));
}
