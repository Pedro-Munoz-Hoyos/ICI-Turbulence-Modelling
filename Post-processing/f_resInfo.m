function [uref,pref,ptref] = f_resInfo(path,maxRes,uexp,pexp,ptexp)
n_samples=20;

% -- SIMULATION DATA -------------------------------------------
mass_m=csvread(path+"massflow.txt");
uref_m=csvread(path+"uref.txt");
prestat_m=csvread(path+"prestat.txt");
ptot_m=csvread(path+"ptot.txt");

uref=uref_m(end,2);
pref=prestat_m(end,2);
ptref=ptot_m(end,2);

fprintf("Maximum converged residual (CONTINUITY): %s\n",maxRes);
fprintf("Mass Flow rate [kg/s] at refeence location (CONVERGED): %s\n",102.1376);
fprintf("Velocity [m/s] at refeence location (CONVERGED):        %s\n",uref);
fprintf("Static pressure [Pa] at refeence location (CONVERGED):  %s\n",pref);
fprintf("Total pressure [Pa] at refeence location (CONVERGED):   %s\n",ptref);

fprintf("Relative error of the velocity:            %s\n",(uref-uexp)*100/uexp);
fprintf("Relative error of the static pressure:     %s\n",(pref-pexp)*100/pexp);
fprintf("Relative error of the stagnation pressure: %s\n",(ptref-ptexp)*100/ptexp);

% -- FLUCTUATIONS ----------------------------------------------
mass_fm=mass_m(end-n_samples:end,2)-mass_m(end,2);
uref_fm=uref_m(end-n_samples:end,2)-uref_m(end,2);
prestat_fm=prestat_m(end-n_samples:end,2)-prestat_m(end,2);
ptot_fm=ptot_m(end-n_samples:end,2)-ptot_m(end,2);

fprintf("Maximum residual in the last %i iterations for the mass-imbalance is:             %s\n",n_samples,max(mass_fm));
fprintf("Maximum residual in the last %i iterations for the reference velocity is:         %s\n",n_samples,max(uref_fm));
fprintf("Maximum residual in the last %i iterations for the reference static pressure is:  %s\n",n_samples,max(prestat_fm));
fprintf("Maximum residual in the last %i iterations for the reference total pressure is:   %s\n",n_samples,max(ptot_fm));
fprintf("----------------------------------------------------------------------------------------------\n\n\n\n");

end

