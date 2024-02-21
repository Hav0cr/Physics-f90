
program pmotion
    implicit none
    real :: g = 9.8 !value of g m/s^2
    real :: thetad ! value of theta, which will be given by the user in degrees
    real :: vi !value of initial velocity which will be given by the user m/s
    real :: thetarad ! value of theta in radians
    real :: R !range of projectile motion

    write(*,*) "Hello! Please enter the desired angle (in degrees): "
    read(*,*) thetad !reads the input value from the user
        if ((thetad>90.0) .or. (thetad<0.0)) then !declines an incorrect value of initial theta from the user
            write(*,*) 'Please ensure that the angle is within range 0 < theta < 90'
            stop 1
        endif
    
        thetarad = thetad * (3.14159 / 180.0) !converts degrees to radians
        
    write (*,*) "Thank you. Now please enter the initial velocity: "
    read(*,*) vi !reads the input value for initial velocity from the user
        if ((vi <= 0)) then !declines a negative input from the user
            write(*,*) 'Please ensure that you are entering a positive value for the initial velocity. '
            stop 1
        endif
    
        R = ((((vi**2)*(sin(2.0*thetarad)))/(g)))

    write(*,'(a, f0.5)') "The range of projectile motion, R, is: ", R


    Stop 0


end program pmotion
