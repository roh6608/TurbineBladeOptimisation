! Simple script to optimise wind turbine blade geometries
program optimise
    implicit none
    
    real :: beta ! [degrees]
    real :: phi ! [degrees]
    real :: alpha = 15 ! [degrees]
    real :: tsr = 4.5
    real :: radius ! [metres]
    real :: omega ! [rad/s]
    real :: windspeed ! [m/s]
    real :: tsrLocal
    integer :: station
    integer :: optimisationStations = 5
    
    do station=1,optimisationStations
        omega = (tsr*windSpeed)/((radius/optimisationStations)*station)
        tsrLocal = omega*(radius)/(optimisationStations)*station/(windSpeed)
        phi = atan(0.017453*(1/tsrLocal*2/3))
        beta = phi - alpha
        print *, station, beta
    end do



end program optimise
