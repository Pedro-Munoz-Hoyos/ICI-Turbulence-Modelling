function [x,y,yp,u,u_c,u_b,u_tau,tau,d,d_star,theta,Re_b,Re_tau,Re_theta,ytot,Var] = f_UY_properties(dens,mu,filename)

[x,ytot,Var]=f_lineRep(filename);

j_c=ceil(length(ytot)/2);
if (mod(length(ytot),2)==0)
 even=1;
else
 even=0;
end

y(:,1)=ytot(1:j_c)-ytot(1);
y(:,2)=ytot(end)-ytot(j_c+even:end);

for i=1:length(x)
    sum=0;
    for j=1:length(ytot)
        % Bulk velocity integration
        sum=sum+Var(i,j,6); 
    end
    % Bulk velocity
    u_b(i)=sum/length(ytot);

    % Center-line velocity
    u_c(i)=0.5*(Var(i,j_c,6)+Var(i,j_c+even,6));
    
    % Top boundary layer
    u(i,:,1)=Var(i,1:j_c,6);
    [yp(i,:,1),dudy(i,1),tau(i,1),u_tau(i,1),d(i,:,1),d_star(i,1),theta(i,1),Re_b(i,1),Re_tau(i,1),Re_theta(i,1)] = f_BL_properties(y(:,1),u(i,:,1),u_c(i),u_b(i),dens,mu);

    % Bottom boundary layer
    u(i,:,2)=Var(i,j_c+even:end,6);
    [yp(i,:,2),dudy(i,2),tau(i,2),u_tau(i,2),d(i,:,2),d_star(i,2),theta(i,2),Re_b(i,2),Re_tau(i,2),Re_theta(i,2)] = f_BL_properties(flip(y(:,2)),flip(u(i,:,2)),u_c(i),u_b(i),dens,mu);
end

end

