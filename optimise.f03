! Simple script to optimise wind turbine blade geometries
program optimise
    implicit none
    
    real :: beta ! [degrees]
    real :: phi ! [radians]
    real :: alpha = 15.0 ! [degrees] 
    real :: tsr = 4.5
    real :: radius = 0.3 ! [metres]
    real :: omega ! [rad/s]
    real :: windspeed ! [m/s]
    real :: tsrLocal
    real :: loc ! [metres]
    integer :: station
    integer :: optimisationStations = 5
    
    100 format(f5.2, 5x, f5.2)
    open(unit=1,file='output.dat')

    do station=1,optimisationStations
        loc = (radius/optimisationStations)*station
        tsrLocal = (tsr/optimisationStations)*station
        phi = atan(((1/tsrLocal)*2/3))
        beta = phi*57.296 -alpha
        write(unit=1,fmt=100) loc, beta
    end do

    close(unit=1)



end program optimise
