# PRINGLE- Program Rendering Interactive Numbers Grapically and Linearly as Expected
## Authors: Christopher Yeh, Taylor-Rain Coleman, Christina De Cesaris



### Introduction: 
This section indicates the purpose of the program and provides background and a justification for why the 
program was created.

The purpose of this program will be to relate position, velocity, and acceleration graphically as a function of time using initial values input by the user. A graph of each will be produced using the mathematical relationships between the three parameters. The idea behind the creation of this program is being able to quickly model simple physics scenarios for students who are learning introductory physics. This program will make it easier to quickly see the relationship between the equations being used and the graphs themselves, as well as be able to compare and contrast the different graphs and see how they're related to each other. This is useful because you can produce many different graphs quickly with many values, instead of having to produce these graphs one at a time by hand by calculating individual datapoints, which is time-consuming and tedious. 

### Program Workflow: 
This section provides an operation overview of what the program does. A flowchart or some other diagram 
might be helpful, but is not required.

This program creates a dataset of 50 ordered pairs using each of the three constant acceleration kinematics equations: a(t)=a, v(t)=at+v, and x(t)=at^2+vt+x. Where a is acceleration and a(t) is the acceleration function, v is initial velocity and v(t) is the velocity function, x is initial position and x(t) is the position function, and t is time. It then uses plotly to render the plots of these functions based on the variables inputted by the user for a, v, and x. 

### Dependencies: 
To run a program users may need to have dependencies installed. Indicate which dependencies are required for 
your program.

In order to run this program, no dependancies must be installed. Users can simply use the application through a web browser via this link: ++++++++. However, if the user prefers to copy the code for some other purpose, such as modifying the code, it can be editted using RStudio. Within RStudio, several packages must be installed. These packages are: shiny, plotly, knitr, shinythemes, and ggplot2.

### Instructions: 
You need to indicate how your program is run.
1. Run the program by
2. 
3. Click each of the input boxes located on the lefthand side of the screen, entering values (either by typing of clicking the 
arows) for the scenario you'd like to model.
4. Once your plot is rendered, you can hover your cursor over the lines in order to view the value of the ordered pair in that location.
5. In the upper right corner of each of the plots, there are several functions, from left to right they: save an image of the plot, allow you to zoom by clicking and highlighting an area, allow you to pan by dragging your cursor, zoom in, zoom out, autoscale the plot, return to the the original scale, toggle spike lines (which creates dashed lines from the point to the axes, show closest data on hover, and compare data on hover

### Expected Output: 
Describe the files and or directories will be produced by your program.

When running correctly, the program will produce create three dataframes based on the given equations and plot them, producing three graphs with all of the capabilities described above, being able to hover and see values, and utillize the functions in the upper righthand corner. In the case of specific user inputs, the following can be expected.
- When the acceleration, a, entered by the user is non-zero, the a(t) plot will give a horizontal line, the v(t) plot will be linear, and the x(t) plot will be quadratic. 
- When a is zero and v is non-zero, the a(t) plot will give a horizontal line at zero, the v(t) plot will be horizontal and non-zero, and the x(t) plot will be linear. 
- When a and v are zero but x is not, the a(t) and v(t) plots will give a horizontal line at zero, and the x(t) plot will be horizontal and non-zero. 

### References: 
Cite pertinent studies or programs that you used to develop your program(s). For example, cite the source of 
equations, the programs run by your program, the study used to motivate your program etc.

-ShinyApp-https://shiny.rstudio.com/. 
-ShinyAppDeployment-https://www.shinyapps.io/ .
-Plotly(ggplot2)-https://plot.ly/ggplot2/ .
-ShinyThemes-https://rstudio.github.io/shinythemes/ .
-knitr-https://yihui.name/knitr/ .
