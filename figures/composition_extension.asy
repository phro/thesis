size(6cm,0);

import compositionSettings;

path morph = scale(2,morphHeight)*unitsquare;

path morph1 = shift(0,domHeight)*morph;
path morph2 = shift(1,domHeight + morphHeight + domHeight)*morph;

drawFibres((0,0),(2,domHeight),"$D_1$");
drawFibres((1,domHeight + morphHeight),(2,morphHeight + 2domHeight),"$C_1\cap D_2$");
drawFibres((2,0),(3,morphHeight + 2domHeight),"$D_2\setminus C_1$");
drawFibres((0,morphHeight+domHeight),(1,2morphHeight + 3domHeight),"$C_1\setminus D_2$");
drawFibres((1,2morphHeight + 2domHeight),(3,2morphHeight + 3domHeight),"$C_2$");

pair boxMidpoint(path p) {
        return 0.5(min(p) + max(p));
}

label("$\phi$",boxMidpoint(morph1));
label("$\psi$",boxMidpoint(morph2));

draw(morph1,morphPen);
draw(morph2,morphPen);
