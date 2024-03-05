function [coord] = f_coordRep(data,pos)

locations=unique(data);

p=1;    
while(locations(p)<0 && pos==1)
    p=p+1;
end
coord=[];
coord(1)=locations(p);
c=2;
for i=p+1:length(locations)
    if(abs(locations(i)-locations(i-1))>1E-6)
        coord(c)=locations(i);
        c=c+1;
    end
end
end

