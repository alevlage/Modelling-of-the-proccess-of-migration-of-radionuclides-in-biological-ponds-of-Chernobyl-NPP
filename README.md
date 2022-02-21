# Modelling-of-the-proccess-of-migration-of-radionuclides-in-biological-ponds-of-Chernobyl-NPP
In MATLAB, you can use the built-in ode functions to solve differential equations.

For modeling we will use the ode45 function. It implements the process of numerical integration by the 4th order Runge – Kutta method. The syntax for addressing it is as follows:
 [t, y] = ode45 (odefun, tspan, y0),
where t, y are the initial values of time and state variables,
odefun - the name of the file (string variable, which is written in apostrophes), which stores the subroutine of the right parts of the integrated equations,
tspan - time of integration of equations,
y0– vector of initial conditions.

The main one is the control program main.m. It first sets the values of radionuclide transfer coefficients. After that the procedure of numerical integration is formed. To do this, the initial conditions and the final integration time are set. Integrated values ​​are plotted.

To form the process of numerical integration by the ode45 function, it is necessary to form the procedure of the right parts of the differential equations of radionuclide accumulation. The equations are written in the dimensionless Cauchy form. The constants are passed to the function of the right parts as global variables from the control program. The initial values ​​of the arguments are formed in the driver and passed to the function when the ode45 is called.
![image](https://user-images.githubusercontent.com/65093378/154976284-5681cb6a-3d6a-42df-9d58-3ad4f1fd3f99.png)
![image](https://user-images.githubusercontent.com/65093378/154976337-337d4a37-fc82-4ddf-80cc-7f5b900f01cc.png)
![image](https://user-images.githubusercontent.com/65093378/154976357-0da25a0e-737f-43bb-a5fe-4521be89bb41.png)
