! Simple script to optimise wind turbine blade geometries
program optimise
    implicit none
    
    real :: beta ! [degrees]
    real :: phi ! [radians]
    real :: alpha = 28.5 ! [degrees] 
    real :: tsr = 4.5
    real :: radius = 0.3 ! [metres]
    real :: omega ! [rad/s]
    real :: windspeed ! [m/s]
    real :: tsrLocal
    real :: loc ! [metres]
    real :: chord ! [metres]
    integer :: bladeNumber = 3
    real :: coefficientLift = 0.94
    real, dimension(69) :: a,cl
    integer :: i
    integer :: optimisationStations = 5
    
    open(unit=1,file="test.dat")

    do i = 1,500
        read(1,*,end=4) a(i),cl(i)
    end do

    4 close(unit=1)

    2 format(f6.3, 5x, f6.2, 5x, f6.3)
    open(unit=3,file='output.dat')

    
    do i=1,optimisationStations
        loc = (radius/optimisationStations)*i
        tsrLocal = (tsr/optimisationStations)*i
        phi = atan(((1/tsrLocal)*2/3))
        beta = phi*57.296 - alpha
        chord = (16*3.1415*loc)/(real(bladeNumber)*coefficientLift)*(sin(0.33333*atan(radius/(tsr*loc))))**2
        write(unit=3,fmt=2) loc, beta, chord
        print *, loc, beta, chord
    end do

    close(unit=3)

end program optimise
