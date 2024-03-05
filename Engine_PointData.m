% -- VARIABLE TO BE STORED -------------------------------------
%    1 -> Mass Flow Rate             
%    2 -> Pressure Gradient       
%    3 -> Pressure Drop     
var=3; 

% -- FILE PARAMETERS -------------------------------------------
filename="Template-1D-Density2.dat"; % Introduce the name of the file to store your data

% -- STUDENT PARAMETERS ----------------------------------------
name="Pedro Munoz Hoyos";
lastname="Munoz";
initial="P";
email="Pedro.MunozHoyos.950@cranfield.ac.uk";
date="16 January 2024";

% -- SIMULATION PARAMETERS -------------------------------------
model="kwStandard";
solver="Fluent";
ReynoldsNumber="1.70 million/meter";
FlowEqnOrder="2";
TurbEqnOrder="2";
RelIterConvLevel="1E-8";

% -- SIMULATION RESULTS ----------------------------------------
valueMedium="1";
valueCoarse="1";
valueVeryCoarse="1";

% -- TEMPLATE (DO NOT MODIFY) ----------------------------------
writelines("#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",filename);
writelines("#",filename,WriteMode="append");
writelines("#   NATO AVT-387 CRWT 1D Data Template - EMPTY TUNNEL DATA SUBMITTAL FORM (Version 1 - 26 September 2023)",filename,WriteMode="append");
writelines("#",filename,WriteMode="append");
writelines("#       Due 22 January 2024 to Tamas Jozsa: tamas.jozsa@cranfield.ac.uk",filename,WriteMode="append");
writelines("#",filename,WriteMode="append");
writelines("#	3D VT Stability Tunnel Empty Tunnel Simulations",filename,WriteMode="append");
writelines("#",filename,WriteMode="append");
writelines("#              TITLE:	First-author participant's last name & first initial + grid + turb model + solver + etc.",filename,WriteMode="append");
writelines("#                       EXAMPLES:  RoyC-UpdatedCommonCaseGrid-SST-Fluent",filename,WriteMode="append");
writelines("#                                  RoyC-UpdatedCommonCaseGrid-SST-SENSEI",filename,WriteMode="append");
writelines("#                                  RoyC-UpdatedCommonCaseGrid-SA-neg-Fluent",filename,WriteMode="append");
writelines("#                                  RoyC-UpdatedCommonCaseGrid-SA-neg-SENSEI",filename,WriteMode="append");
writelines("#                                  RoyC-CommonCaseGrid-SST",filename,WriteMode="append");
writelines("#                                  RoyC-Overset_Grids-SST",filename,WriteMode="append");
writelines("#                                  RoyC-Dans Grids - Structured OVERFLOW-SST",filename,WriteMode="append");
writelines("#                                  RoyC-Nominal High Speed - Unstructured Grid-SST",filename,WriteMode="append");
writelines("#                                  etc.",filename,WriteMode="append");
writelines("#",filename,WriteMode="append");
writelines("#       NOMENCLATURE:	x = streamwise location in tunnel in meters (x = 0 m is the beginning of the test section)",filename,WriteMode="append");
writelines("# 					    y = vertical location in tunnel in meters (y = 0 m is halfway between the tunnel floor and tunnel ceiling)",filename,WriteMode="append");
writelines("# 					    z = spanwise location in tunnel in meters (z = 0 m is halfway between the port and starboard walls)",filename,WriteMode="append");

if(var==1)
    writelines("# 					    MassFlowRate  = mass flow rate through the domain, kg/s",filename,WriteMode="append");

    variablesText="VARIABLES = 'h' 'N' 'MassFlowRate (kg/s)'";
    CFDVariable="MassFlowRate";
    ZoneTVariable="MassFlowRate";
    
elseif(var==2)
    writelines("# 					    PressGradient  = delta-Cp/delta-x between Point 1 : x = 0.00m, y = 0m, z = 0m",filename,WriteMode="append");
    writelines("#                                                                 Point 2 : x = 6.44m, y = 0m, z = 0m  ([Cp_2 - Cp_1]/6.44) [1/m]",filename,WriteMode="append");

    variablesText="VARIABLES = 'h' 'N' 'PressGradient (1/m)'";
    CFDVariable="PressGradient";
    ZoneTVariable="PressureGradient";

else
    writelines("# 					    PressureDrop  = Pressure coefficient difference between Point 1 : x = -9.09m, y = 0m, z = 0m",filename,WriteMode="append");
    writelines("#                                                                               Point 2 : x =  6.44m, y = 0m, z = 0m (dimensionless)",filename,WriteMode="append");

    variablesText="VARIABLES = 'h' 'N' 'PressureDrop'";
    CFDVariable="PressureDrop";
    ZoneTVariable="PressureDrop";    
end

writelines("#",filename,WriteMode="append");
writelines("# 					    N identifies the grid used, where N = number of cells or elements used in the simulation",filename,WriteMode="append");
writelines("#",filename,WriteMode="append");
writelines("#   BOUNDARY CONDITIONS & REFERENCE VALUES:",filename,WriteMode="append");
writelines("# 					    Re=1.70 million/meter, Mach=0.082, Stag. Temp=297.2 K, Stag. Press=94450 Pa, Static Press=94009 Pa",filename,WriteMode="append");
writelines("# 					    Re=2.80 million/meter, Mach=0.136, Stag. Temp=298.4 K, Stag. Press=94359 Pa, Static Press=93147 Pa",filename,WriteMode="append");
writelines("# 					    Re=3.90 million/meter, Mach=0.193, Stag. Temp=300.4 K, Stag. Press=94242 Pa, Static Press=91832 Pa",filename,WriteMode="append");
writelines("#                       (Note: reference location is x=3.502m, y=-0.608m, z=0m)",filename,WriteMode="append");
writelines("#",filename,WriteMode="append");
writelines("#              NOTES:	1. All numerical data fields can be free-formatted.",filename,WriteMode="append");
writelines("#                       2. At least 3 grid levels should be included if possible, with each grid level being a separate zone.",filename,WriteMode="append");
writelines("#                       3. Give at least 7 significant digits for all quantities.",filename,WriteMode="append");
writelines("#                       4. The DATASETAUXDATA variable ID refers to the ID found in the participant Google Sheet spreadsheet found at:",filename,WriteMode="append");
writelines("#                          (https://docs.google.com/spreadsheets/d/1dvK5ZNO8hp5TzwK7H5pcDJjNhqYqySsS/edit#gid=1409073702)",filename,WriteMode="append");
writelines("#                       5. Fill fields with value of -999 for data that are not available.",filename,WriteMode="append");
writelines("#                       6. Only include one grid type, solver, turb model, etc per form.",filename,WriteMode="append");
writelines("#                       7. The AUXDATA variable RelIterConvLevel refers to the relative iterative convergence level for whichever",filename,WriteMode="append");
writelines("#                          governing equation had the smallest drop, usually measured from the first few iterations to the final one",filename,WriteMode="append");
writelines("#                       8. Give exact total for N, the total number of cells/elements in the grid",filename,WriteMode="append");
writelines("#                       9. If you need to compute h, the scalar measure of the grid spacing, use the cube root of (1/N)",filename,WriteMode="append");
writelines("#",filename,WriteMode="append");
writelines("#                       For the UpdatedCommonCaseGrid, these h values are:",filename,WriteMode="append");
writelines("#",filename,WriteMode="append");
writelines("#                                Grid    |   #Cells,N   |      h",filename,WriteMode="append");
writelines("#                              --------------------------------------",filename,WriteMode="append");
writelines("#                              Level 1:  |  11,389,832  |  0.00444455",filename,WriteMode="append");
writelines("#                              Level 2:  |   5,613,201  |  0.00562682",filename,WriteMode="append");
writelines("#                              Level 3:  |   2,814,664  |  0.00708257",filename,WriteMode="append");
writelines("#                              Level 4:  |   1,423,729  |  0.00888910",filename,WriteMode="append");
writelines("#",filename,WriteMode="append");
writelines("#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",filename,WriteMode="append");
writelines("",filename,WriteMode="append");
writelines("TITLE = '"+lastname+initial+"-UpdatedCommonCaseGrid-"+model+"-"+solver+"'",filename,WriteMode="append");
writelines(variablesText,filename,WriteMode="append");
writelines("",filename,WriteMode="append");
writelines("#  NOTE: THE FOLLOWING APPLIES TO THIS ENTIRE FILE",filename,WriteMode="append");
writelines("#--------------------------------------------------------------",filename,WriteMode="append");
writelines("#   PARTICIPANT, SOLVER, TURBULENCE MODEL, AND GRID INFORMATION",filename,WriteMode="append");
writelines("#--------------------------------------------------------------",filename,WriteMode="append");
writelines("DATASETAUXDATA CFDVARIABLE     = '"+CFDVariable+"'",filename,WriteMode="append");
writelines("DATASETAUXDATA ID	           = 'D1'",filename,WriteMode="append");
writelines("DATASETAUXDATA Name            = '"+name+"'",filename,WriteMode="append");
writelines("DATASETAUXDATA SubmissionDate  = '"+date+"'",filename,WriteMode="append");
writelines("DATASETAUXDATA SolverName      = '"+solver+"'",filename,WriteMode="append");
writelines("DATASETAUXDATA BasicAlgorithm  = 'Cell Center Finite Volume Method'",filename,WriteMode="append");
writelines("DATASETAUXDATA TurbulenceModel = '"+model+"'",filename,WriteMode="append");
writelines("DATASETAUXDATA FlowEqnOrder    = '"+FlowEqnOrder+"'",filename,WriteMode="append");
writelines("DATASETAUXDATA TurbEqnOrder    = '"+TurbEqnOrder+"'",filename,WriteMode="append");
writelines("DATASETAUXDATA Miscellaneous   = '-999'",filename,WriteMode="append");
writelines("DATASETAUXDATA GridId          = 'UpdatedCommonCaseGrid'",filename,WriteMode="append");
writelines("",filename,WriteMode="append");
writelines("#  NOTE: THE FOLLOWING APPLIES TO THIS ZONE (EACH GRID LEVEL)",filename,WriteMode="append");
writelines("#---------------------------------------------------------------------------------",filename,WriteMode="append");
writelines("#   EACH ZONE REFERS TO A DIFFERENT GRID LEVEL, FINEST (E.G., LEVEL 1) TO COARSEST",filename,WriteMode="append");
writelines("#---------------------------------------------------------------------------------",filename,WriteMode="append");
writelines("ZONE T = '"+lastname+initial+"-UpdatedCommonCaseGrid-"+model+"-"+solver+"-"+ZoneTVariable+"-"+ReynoldsNumber+"'",filename,WriteMode="append");
writelines("AUXDATA ReynoldsNumber  = '"+ReynoldsNumber+"'",filename,WriteMode="append");
writelines("AUXDATA RelIterConvLevel = '"+RelIterConvLevel+"'",filename,WriteMode="append");
writelines(" 0.00562682   5613201  "+sprintf('%10E',valueMedium),filename,WriteMode="append");
writelines(" 0.00708257   2814664  "+sprintf('%10E',valueCoarse),filename,WriteMode="append");
writelines(" 0.00888910   1423729  "+sprintf('%10E',valueVeryCoarse),filename,WriteMode="append");
