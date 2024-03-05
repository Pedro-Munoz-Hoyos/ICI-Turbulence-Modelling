function [x,y,z,Var] = f_planeRep(fileName)

Data=csvread(fileName);

x=f_coordRep(Data(:,2),0);
y=f_coordRep(Data(:,3),0);
z=f_coordRep(Data(:,4),0);

Var=[];
for c=1:size(Data,1)
    for i=1:length(x)
        for j=1:length(y)
            for k=1:length(z)
                if(abs(Data(c,2)-x(i))<=1E-6)
                    if(abs(Data(c,3)-y(j))<=1E-6)
                        if(abs(Data(c,4)-z(k))<=1E-6)
                            Var(j,k,1:17,i)=Data(c,5:size(Data,2));
                            Var(j,k,18,i)=sqrt((Data(c,11)^2)+(Data(c,12)^2));
                            Var(j,k,19,i)=sqrt((Data(c,16)^2)+(Data(c,17)^2));
                        end
                    end
                end
            end
        end
    end
end
end

