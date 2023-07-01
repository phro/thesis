size(3cm,0);


import compositionSettings;
morphHeight = 0.5;

path morph = scale(1,morphHeight)*unitsquare;

path morph1 = shift(0,domHeight)*morph;
path morph2 = shift(0,domHeight + morphHeight + domHeight)*morph;


drawFibres((0,0),(1,domHeight),"$D_1$");
drawFibres((0,domHeight+morphHeight),(1,morphHeight+2domHeight),"$C_1 = D_2$");
drawFibres((0,2domHeight+2morphHeight),(1,2morphHeight+3domHeight),"$C_2$");

pair boxMidpoint(path p) {
        return 0.5(min(p) + max(p));
}

label("$\phi_1$",boxMidpoint(morph1));
label("$\phi_2$",boxMidpoint(morph2));

draw(morph1,morphPen);
draw(morph2,morphPen);
