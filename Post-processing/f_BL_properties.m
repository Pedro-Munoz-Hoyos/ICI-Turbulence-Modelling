function [yp,dudy,tau,u_tau,d,d_star,theta,Re_b,Re_tau,Re_theta] = f_BL_properties(y,u,u_c,u_b,dens,mu)
        
        % Wall-normal velocity gradient (First-order)
        dudy=(u(2)-u(1))/(y(2)-y(1)); 

        % Wall-shear stress
        tau=mu*dudy;

        % Friction velocity
        u_tau=sqrt(tau/dens);
        
        % Non-dimensional wall distance
        yp=y*u_tau*dens/mu;

        % Boundary layer thickness (d)
        c=1;
        while (u(c)/u_c<1)
            c=c+1;
        end
        d=[y(c),u(c)];

        % Displacement thickness (d_star)
        d_star=(1-(u(1)/u_c))*0.5*(y(2)-y(1));
        for j=2:length(y)-1
            d_star=d_star+(1-(u(j)/u_c))*0.5*(y(j+1)-y(j-1));
        end

        % Momentum thickness (theta)
        theta=(u(1)/u_c)*(1-(u(1)/u_c))*0.5*(y(2)-y(1));
        for j=2:length(y)-1
            theta=theta+(u(j)/u_c)*(1-(u(j)/u_c))*0.5*(y(j+1)-y(j-1));
        end
        
        % Bulk Reynolds number (Re_b)
        Re_b=dens*u_b*2*y(end)/mu;
        
        % Friction Reynolds number (Re_tau)
        Re_tau=dens*u_tau*y(end)/mu;

        % Momentum Reynolds number (Re_theta)
        Re_theta=dens*u_c*theta/mu;
end

