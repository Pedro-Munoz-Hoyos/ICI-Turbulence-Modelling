# ICI-Turbulence-Modelling
Related code from the course in Turbulence Modelling attended during the M.Sc. in Computational Fluid Dynamics at Cranfield University. The software consists of two engines that rewrite the flow information obtained with Fluent into the desired format asked by the module leader. The first engine, namely _Engine LineData_, is related to the information obtained over a line whereas the second, namely _Engine PointData_, is related to the information obtained over a point.

## USAGE
**Engine LineData**
1. Select the variable to be stored. (Ex: Density)
1. Introduce the name of the files containing the information from Fluent and the name of the file to be stored.
1. Introduce the information related to the student's status.
1. Introduce the information related to the simulation parameters.
1. Introduce the information related to the grid parameters. Note that the variable _RelIterConvLevel_ is described in the header below.

**Engine PointData**
1. Select the variable to be stored. (Ex: Mass Flow Rate )
1. Introduce the name of the file to be stored.
1. Introduce the information related to the student's status.
1. Introduce the information related to the simulation parameters.
1. Introduce the information related to the results. Note that in this case the information is written directly without reading any file.

## IMPORTANT
The engines are currently set to store data from the _Medium_, _Coarse_, and _Very Coarse_ grids. Therefore, in order to introduce the information of the fourth one, namely the _Fine_ grid, brief modifications must be made to the code. However, the code is written in a way that such modifications can be performed easily.

Make sure that the data introduced from fluent follows the format of the "DummyText.txt" files. That is four columns of information separated by commas (,). Otherwise, changes must have to be made to accommodate other format inputs.

## DISCLAIMER	
The engines contained within this repository were created by Pedro Muñoz Hoyos as part of the assignment on Turbulence Modelling at Cranfield University. **The usage of these scripts is open to any student who desires to implement it in its assignment**. Were they to be used, the author kindly asks for this GitHub repository to be referenced in their report.
 
