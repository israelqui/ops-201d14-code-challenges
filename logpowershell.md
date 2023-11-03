# Ops Challenge - Log Retrieval via Powershell

1. Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
``Get-EventLog -LogName System -Newest | Where-Object {$_.TimeCreated -ge (Get-Date).AddHours(-24)} | Format-Table -AutoSize | Out-File -FilePath "$env:USERPROFILE\Desktop\last_24.txt"``
2. Output all “error” type events from the System event log to a file on your desktop named errors.txt.
``Get-EventLog -LogName System -EntryType Error | Out-File -FilePath "$env:USERPROFILE\Desktop\errors.txt"``
3. Print to the screen all events with ID of 16 from the System event log.
``Get-EventLog -LogName System | Where-Object { $_.Id -eq 16 } | Format-Table -AutoSize``
4. Print to the screen the most recent 20 entries from the System event log.’
``Get-EventLog -LogName System -MaxEvents 20 | Format-Table -AutoSize``
5. Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).
``Get-EventLog -LogName System -MaxEvents 500 | Select-Object -ExpandProperty ProviderName | Format-Table -AutoSize``