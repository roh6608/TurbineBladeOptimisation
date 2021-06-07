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
integer :: bladeNumber
character(len=20) :: fileName
```
Where; ```bladeNumber``` is the number of blades and ```fileName``` is the file name of the aerofoil polar for the blade, this polar must of the format shown in the example below.

```
  -5.000  -0.5702
  -4.750  -0.5472
  -4.500  -0.5014
  -4.250  -0.4879
  -4.000  -0.4684
  -3.750  -0.4281
  -3.500  -0.4129
  -3.250  -0.3693
  -3.000  -0.3623
```

Where; the left column is the angle of attack in degrees, and the right column is the coefficient of lift.

## Compiling
The optimise.f03 file is compiled using gfortran as shown in the below example.

```
gfortran optimise.f03 -o optimise
```

## Output
The output of the optimised blade geometry is in the dat file named output.dat. The format of the file is shown in the example below.

```
   0.060         31.5        0.121
   0.120         15.3        0.090
   0.180          8.9        0.067
   0.240          5.5        0.052
   0.300          3.4        0.042

```

The left column is the position along the blade in metres, the centre column is the optimised angle of attack of the blade in degrees and the right column is the optimised chord of the blade in metres. Each value takes up a width of 8. The space between values is 5.
