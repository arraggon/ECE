**Project Team:** 

[dornathh@oregonstate.edu](mailto:dornathh@oregonstate.edu), [yangd2@oregonstate.edu](mailto:yangd2@oregonstate.edu), [ashkarx@oregonstate.edu](mailto:ashkarx@oregonstate.edu)

**Project Description | Alarm Clock:** 

The design project we chose to do was the alarm clock. Firstly, the user inputs the current time. This is done by powering the clock with a switch, and then the time is set by toggling the seconds, minutes, and hours, and adjusting the values using two buttons to increase or decrease the numbers. 

Once the clock is set to the correct time, the user can then proceed to set an alarm. This is done by activating a specific switch that enables the alarm-setting mode. The user then adjusts the seconds, minutes, and hours in a similar manner as when setting the current time. When the current time reaches the preset alarm time, indicator lights above the switches will illuminate which signals that the alarm is functioning correctly.

**Project Reflection:** 

One thing that went very well was that we had a very similar process for setting the current time as well as for setting an alarm. Not only did this shorten our workload, but also made it so that when checking whether the alarm should go off, we just need to check if the current time is equal to the preset alarm time.

One issue we encountered was with the switches for setting the hours, minutes, and seconds. Occasionally, flipping these switches caused erratic and random time changes. While we were unable to completely resolve this issue, we identified methods to mitigate the problem when using the FPGA board. By implementing these techniques, we managed to reduce the occurrence of these anomalies during operation.

**Block/Logic Diagram:**

**![][image1]**

**Block Description:** 

For this project, we have 11 inputs, 6 of seven-seg display output and one LED display output.

| Inputs  | Description for inputs | Outputs  | Description for outputs |
| :---- | :---- | :---- | :---- |
| ResetActiveLow | It is a switch, turn it on to start the clock, turn it off to reset the clock.  | Six of seven-seg display | Two of them as a display group,  display hours, minutes and seconds. |
| C\[2:0\] | From C0 to C2, turn on to adjust the time. | LED0 |  Light turn on for 1 second when the alarm starts. |
| switch\[0\] | Switch0 is for changing the seven-seg display mode, off for time and on for alarm. |  |  |
| switch\[3:1\] | Switch1 switch2 and switch3 for adjusting alarm time. |  |  |
| add | A button for add when adjusting time or alarm |  |  |
| minus | A button for minus when adjusting time or alarm |  |  |
| clock50MHz | A frequency source providing signal 1 and 0 |  |  |

How does the clock work:

Based on our Lab 5, we implemented a clock with three nested loops representing seconds, minutes, and hours.

Clock Functionality:

Seconds Loop: Every time the seconds counter reaches 60, it resets to 0 and increments the minutes counter by 1\.  
Minutes Loop: Every time the minutes counter reaches 60, it resets to 0 and increments the hours counter by 1\.  
Hours Loop: Every time the hours counter reaches 24, it resets to 0\.  
Each loop generates a 7-bit data representation, which is then used to display a 2-digit decimal number for seconds, minutes, and hours on two seven-segment displays.

Alarm Functionality:

We implemented an alarm feature where the user can set a specific time (hours, minutes, and seconds).  
Once the current time matches the set alarm time, an LED light turns on to indicate the alarm.  
Setting and Adjusting Clock and Alarm Time:

We created a display mode chooser:  
When the switch is off, the display shows the current time.  
When the switch is on, the display shows the set alarm time.

Adjusting Clock:  
There are three switches for hours, minutes, and seconds. Turning any of these switches on pauses the clock.  
An add button and a minus button are used to increment or decrement the respective time units.

Changing Alarm:  
Turn on the alarm display mode.  
Use three switches to adjust hours, minutes, and seconds.  
Use the add or minus button to change the alarm time.

**Simulation Results:**

Images, tables, etc.. and a description of them and why they prove your project works correctly.

![][image2]

The data above shows the change in the seven segments.

![][image3]

The above data shows everything all at once though it is very difficult to understand because their is so much going on.

**Video Link:**  
[https://media.oregonstate.edu/media/t/1\_xtpv69lw](https://media.oregonstate.edu/media/t/1_xtpv69lw)

**Appendix**:  
Include all System Verilog and do files. Anything else that is important but not included above can be here as well.  
