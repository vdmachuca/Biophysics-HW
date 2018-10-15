function[ySol] = HW1part3
    syms h(r)
    ode = diff(h,r,2)/r+diff(h,r)/r^2- diff(h,r,4) == 0;
    ySol(x) = dsolve(ode)
end