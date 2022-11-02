    vdd =1.8;
    gmmin=1.33e-3;
    gm = gmmin*3;
    uncox = 2.5138e-4;
    iss= 1e-3;
    vt =0.5;
    
    wbyldriver = (gm^2)/(4*uncox*iss) %for one driver transistor half id
   vgsdriver = vt + (2*(iss/2))/(uncox*wbyldriver) %Change to set value
   vovcurr = vgsdriver-0.2;
   wbylcurrent = (2*iss)/(uncox*(vovcurr^2))