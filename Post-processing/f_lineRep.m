function [x,y,Var] = f_lineRep(filename)

Data=csvread(filename);

x=f_coordRep(Data(:,2),1);

% Consider only the test section
c=1;
yi=[];
for i=1:size(Data,1)
    if(Data(i,2)>=0)
        yi(c)=Data(i,3);
        c=c+1;
    end
end
y=f_coordRep(yi,0);

Var=[];
for c=1:size(Data,1)
    for i=1:length(x)
        for j=1:length(y)
            if(abs(Data(c,2)-x(i))<=1E-6)
                if(abs(Data(c,3)-y(j))<=1E-6)
                    Var(i,j,:)=Data(c,5:size(Data,2));
                end
            end
        end
    end
end

end

