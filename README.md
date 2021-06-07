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
The variables that can be changed for the optimisation are shown below.

```fortran

```

## Output
The output of the optimised blade geometry is in the dat file named output.dat. The format of the file is shown in the example below.

```
0.060       8.0     0.081
0.120      -8.2     0.061
0.180     -14.6     0.045
0.240     -18.0     0.035
0.300     -20.1     0.028

```

The left column is the position along the blade in metres, the centre column is the optimised angle of attack of the blade in degrees and the right column is the optimised chord of the blade in metres. Each value takes up a width of 8. The space between values is 5.
