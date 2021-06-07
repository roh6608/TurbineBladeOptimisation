! Simple script to optimise wind turbine blade geometries
program optimise
    implicit none
    
    real :: beta ! [degrees]
    real :: phi ! [radians]
    real :: alpha = 0.26175 ! [radians]
    real :: tsr = 4.5
    real :: radius = 0.3 ! [metres]
    real :: omega ! [rad/s]
    real :: windspeed ! [m/s]
    real :: tsrLocal
    real :: loc ! [metres]
    integer :: station
    integer :: optimisationStations = 5
    
    do station=1,optimisationStations
        loc = (radius/optimisationStations)*station
        tsrLocal = (tsr/optimisationStations)*station
        phi = atan(((1/tsrLocal)*2/3))
        beta = phi - alpha
        print *, loc, beta*57.296
    end do



end program optimise
