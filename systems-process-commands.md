# System Process Commands


## 1. Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
`Get-Process | Sort-Object -Property CPU -Descending`
Get-Process retrieves a list of all running processes on windows, | | (pipe): The pipe symbol (|) is used to pass the output (the list of processes) from the Get-Process cmdlet as input to the next cmdlet, which is Sort-Object. Sort-Object -Property CPU -Descending: This part of the command sorts the list of processes based on the "CPU" property in descending order. Sort-Object is used to sort the objects in the pipeline (the list of processes) based on the specified property. -Property CPU specifies that the sorting should be done based on the "CPU" property of each process, which represents the CPU usage percentage. -Descending is used to sort the processes in descending order, which means that processes with the highest CPU usage will appear at the top of the list. 
- When you run this PowerShell command, you will get a list of running processes sorted in descending order of CPU usage, with the processes consuming the most CPU resources appearing at the top of the list. This can be helpful for identifying which processes are using the most CPU power on your system.



## 2. Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.

`Get-Process | Sort-Object -Property ID`
Sort-Object -Property ID: This part of the command sorts the list of processes based on the "ID" property. Sort-Object is used to sort the objects in the pipeline (the list of processes) based on the specified property.
-Property ID specifies that the sorting should be done based on the "ID" property of each process, which is the PID (Process Identification Number).
- When you run this PowerShell command, you will get a list of running processes sorted in ascending order of their PIDs. The processes will be listed from the lowest PID to the highest PID. This can be useful for organizing and inspecting the processes running on your system based on their unique identification numbers.

## 3. Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.

`Get-Process | Sort-Object -Property WS -Descending | Select Object -First 5`
-Property WS specifies that the sorting should be done based on the "WS" property, which represents the Working Set memory usage. Select-Object -First 5: This part of the command selects the top five processes from the sorted list. Select-Object is used to select a specified number of objects from the pipeline.
-First 5 specifies that the command should select the first five processes in the list, which have the highest Working Set memory usage.
- When you run this PowerShell command, you will get a list of the top five running processes with the highest Working Set memory usage. This can be useful for identifying which processes are using the most memory on your system.

## 4. Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.

`Start-Process "msedge.exe" -ArgumentList "https://owasp.org/www-project-top-ten/"`
Start-Process: This cmdlet is used to start a new process, in this case, it's used to start the Microsoft Edge web browser.

"msedge.exe": This part specifies the application you want to start, which is "msedge.exe." This is the executable file for Microsoft Edge.

-ArgumentList "https://owasp.org/www-project-top-ten/": Here, you provide the URL you want to open as an argument to the Microsoft Edge process. In this case, you're telling Edge to open the OWASP Top Ten Project website.

- When you run this command in PowerShell, it will launch Microsoft Edge and load the specified URL, taking you to the OWASP Top Ten Project website in your web browser.

## 5. Start the process Notepad ten times using a for loop.

`for ($i = 1 ; $i -le 10 ; $i++) { Start-Process "notepad.exe" }`
for ($i = 1; $i -le 10; $i++): This sets up a for loop that will iterate from $i equal to 1 to $i less than or equal to 10, and in each iteration, it increments $i by 1.

{ Start-Process "notepad.exe" }: Within the loop's curly braces, it runs the Start-Process cmdlet to launch the Notepad application ("notepad.exe") in each iteration.

- When you run this PowerShell command, it will open the Notepad application ten times, each in a separate window. This is a quick way to demonstrate how to use a for loop to perform a repetitive task, such as opening an application multiple times.

## 6. Close all instances of the Notepad.

`Get-Process | Where-Object { $_.ProcessName -eq "notepad" } | ForEach-Object { Stop-Process -Id $_.Id }`
Where-Object { $_.ProcessName -eq "notepad" }: This part of the command filters the list of processes to include only those where the "ProcessName" property is equal to "notepad."

{}: Encloses a script block that contains the filtering condition. $_ represents the current object (each process in the list), and $_ .ProcessName accesses the "ProcessName" property of that process.
| (pipe): Another pipe symbol is used to pass the filtered list to the next cmdlet, which is ForEach-Object.

ForEach-Object { Stop-Process -Id $_.Id }: This part of the command iterates through the filtered list of processes and stops each Notepad process by its Process Identification Number (PID).

{}: Encloses a script block that specifies the action to be taken for each object in the filtered list. $_ represents the current object (each process in the list), and $_ .Id accesses the "Id" property, which is the PID of the process.

Stop-Process -Id $_.Id: This command is used to stop each process by its PID.

- When you run this PowerShell command, it will find all running Notepad processes and stop each of them. This is a way to close all open instances of Notepad using PowerShell. Please be cautious when using this command, as it will forcefully terminate Notepad processes without saving any unsaved work.

## 7. Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.

`Stop-Process -Id 10172`
Stop-Process: This is the cmdlet used to stop or terminate a process.

-Id 10172: This part of the command specifies the Process Identification Number (PID) of the process you want to terminate. In this case, you are specifying the PID as 10172 (msedge). 

- When you run this PowerShell command, it will forcefully terminate the process with the PID 10172.