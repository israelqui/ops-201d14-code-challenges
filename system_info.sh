#!/bin/bash

 echo "System Information:"
 echo "-------------------"

 # Display information about the computer
 echo "Name of the computer:"
 lshw -c system | grep -E "product:|vendor:|physical id:|bus info:|width:"

 # Display CPU information
 echo "CPU:"
 lshw -c cpu | grep -E "product:|vendor:|physical id:|bus info:|width:"

 # Display RAM information
 echo "RAM:"
 lshw -c memory | grep -E "description:|physical id:|size:"

 # Display Display Adapter information
 echo "Display Adapter:"
 lshw -c display | grep -E "description:|product:|vendor:|physical id:|bus info:|width:|clock:|capabilities:|configuration:|resources:"

 # Display Network Adapter information
 echo "Network Adapter:"
 lshw -c network | grep -E "description:|product:|vendor:|physical id:|bus info:|logical name:|version:|serial:|size:|capacity:|width:|clock:|capabilities:|configuration:|resources:"
 echo "-------------------"
