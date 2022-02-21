# Modelling-of-the-proccess-of-migration-of-radionuclides-in-biological-ponds-of-Chernobyl-NPP
In MATLAB, you can use the built-in ode functions to solve differential equations.

For modeling we will use the ode45 function. It implements the process of numerical integration by the 4th order Runge – Kutta method. The syntax for addressing it is as follows:
 [t, y] = ode45 (odefun, tspan, y0),
where t, y are the initial values of time and state variables,
odefun - the name of the file (string variable, which is written in apostrophes), which stores the subroutine of the right parts of the integrated equations,
tspan - time of integration of equations,
y0– vector of initial conditions.

The main one is the control program main.m. It first sets the values of radionuclide transfer coefficients. After that the procedure of numerical integration is formed. To do this, the initial conditions and the final integration time are set. Integrated values ​​are plotted.

To form the process of numerical integration by the ode45 function, it is necessary to form the procedure of the right parts of the differential equations of radionuclide accumulation. The equations are written in the dimensionless Cauchy form. The constants are passed to the function of the right parts as global variables from the control program. The initial values of the arguments are formed in the driver and passed to the function when the ode45 is called.

![image](https://user-images.githubusercontent.com/65093378/154980369-a76af19d-6710-4d6d-b047-bb79f38bb04c.png)
![image](https://user-images.githubusercontent.com/65093378/154980389-8d82f5af-ec43-418e-8c76-902ddf9891c6.png)
![image](https://user-images.githubusercontent.com/65093378/154980414-4d4c9366-4db5-4243-8184-9c7df50283a2.png)
