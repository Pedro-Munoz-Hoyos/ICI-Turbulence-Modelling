function [GCI23,GCI34,qual] = f_gridConv(vmedium,vcoarse,vverycoarse)

r23=(5743400-1)/(2814664-1);
r34=(2814664-1)/(1476000-1);

epsi23=vcoarse-vmedium;
epsi34=vverycoarse-vcoarse;

tol=0.001;
res=100;
p=0.8;
while res>tol
p=p+0.001;
res=abs((1/log(r23))*abs(abs(log(epsi34/epsi23))+log(((r23^p)-sign(epsi34/epsi23))/((r34^p)-sign(epsi34/epsi23))))-p);
end

GCI23=1.25*abs(epsi23/vmedium)/((r23^p)-1);
GCI34=1.25*abs(epsi34/vcoarse)/((r34^p)-1);
qual=GCI34-(r23^p)*GCI23;

end

