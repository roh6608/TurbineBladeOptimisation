# TurbineBladeOptimisation
This script allows the optimisation of the angle attack of the blades and chord of the blades (using the Schmitz method).

## Optimising Blade Angle of Attack
The variables that can be changed for the optimisation of angle of attack are shown below.

```fortran
real :: alpha
real :: tsr   
real :: radius
integer :: optimisationStations
```
Where; ```alpha``` is the angle of attack that the aerofoil performs best at, this value is in degrees, ```tsr``` is the tip speed ratio being optimised for, ```radius``` is the length of the blade in metres, and ```optimisationStations``` is the amount of sections the blade should be split into the optmise.

## Optimising Blade Chord
Still under development

## Output
The output of the optimised blade geometry is in the dat file named output.dat. The format of the file is shown in the example below.

```
 0.06     21.53     0.06
 0.12      5.32     0.08
 0.18     -1.13     0.10
 0.24     -4.51     0.06
 0.30     -6.57     0.04

```

The left column is the position along the blade in metres, the centre column is the optimised angle of attack of the blade and the right column is the optimised chord of the blade. Each value takes up a width of 5 and has 2 decimal places. The space between values is also 5.
