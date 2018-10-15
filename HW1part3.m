function[ySol] = HW1part3
    syms h(r)
    syms r
    Dh = diff(h,r);
    ode = -diff(h,r,2)/r+diff(h,r)/r^2 +2*diff(h,r,3)+ r*diff(h,r,4) == 0;
    cond1 = Dh(5) == 0;
    cond2 = Dh(100) == 0;
    cond3 = h(5) == 50;
    cond4 = h(100) == 0;
    conds = [cond1 cond2 cond3 cond4];
    ySol(r) = dsolve(ode,conds);
    x = 5:1:100;
    plot(x,ySol(x))
end