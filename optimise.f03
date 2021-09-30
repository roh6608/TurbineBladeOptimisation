! Simple script to optimise wind turbine blade geometries
program optimise
    implicit none
    
    real :: beta ! [degrees]
    real :: phi ! [radians]
    real :: alpha = 5 ! [degrees] 
    real :: tsr = 4.5
    real :: radius = 1 ! [metres]
    real :: omega ! [rad/s]
    real :: windspeed ! [m/s]
    real :: tsrLocal
    real :: loc ! [metres]
    real :: chord ! [metres]
    real :: coefficientLift
    real :: rotorSolidity
    real, dimension(100) :: a,cl
    integer :: arrayLength = size(cl)
    integer :: bladeNumber = 2
    integer :: i
    integer :: j
    integer :: optimisationStations = 5
    character(len = 20) :: fileName = 'test.dat'
    
    open(unit=1,file=fileName)

    do i = 1,arrayLength
        read(1,*,end=4) a(i),cl(i)
    end do

    4 close(unit=1)

    2 format(f8.3, 5x, f8.1, 5x, f8.3)
    open(unit=3,file='output.dat')

    
    do i=1,optimisationStations
        loc = (radius/optimisationStations)*i
        tsrLocal = (tsr/optimisationStations)*i
        phi = atan(((1/tsrLocal)*2/3))
        beta = phi*57.296 - alpha

        do j=1,arrayLength
            if (a(j) > beta) then
                    coefficientLift = cl(j)
                    exit 
            end if
        end do 

        chord = (16*3.1415*loc)/(real(bladeNumber)*coefficientLift)*(sin(0.33333*atan(radius/(tsr*loc))))**2

        rotorSolidity = (chord*bladeNumber)/(2*3.1415*loc)

        if (rotorSolidity > 1) then
            print*,'Warning rotor solidity is greater then one, manual manipulation of the chord is recommended at position;',i
        end if

        write(unit=3,fmt=2) loc, beta, chord
    end do

    close(unit=3)

end program optimise
 