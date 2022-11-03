clear all;
close all;

iotable=[];
wl1=[];
wl2=[];
for i = 6:10;
    
    vdd =1.8;
    gmmin=1.33e-3;
    gm = gmmin*3;
    vovcurr = i*0.1;
    vovdriver = vdd - vovcurr-0.5;
    uncox = 2.5138e-4;
    lambda = 0.033;

    io = gm*vovdriver*(1+lambda*(vdd-vovcurr))
    wbyldriver = (gm^2)/(uncox*io)
    wbylcurrent = 2*io/(uncox*(vovcurr^2))
    
    wl1(i)=wbyldriver;
    %wl11(i) = gm/(uncox*vovdriver);
    wl2(i)=wbylcurrent;
    iotable(i)=io;
end
figure;
a=1:10;
plot(a,wl1,'--r',a,wl2);

