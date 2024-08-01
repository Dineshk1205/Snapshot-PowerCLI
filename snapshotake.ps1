$vms = Get-Content "/Users/dinesh/snap/list.csv"  # Replace the file path with your own file path name.
$vm = get-vm $vms  
$vm | new-snapshot -name CHG0123456    # Rename the snapshot as needed, and if you wish to include memory in your snapshot, just add -Memory to the end of the file.
Write-Host "Hey, the Snapshot has been successfully taken. I'll print the VM name and Snapshot details for your reference in just a moment.”
Get-VM $vm | Get-Snapshot | select VM, Name, Created | Format-Table -AutoSize 
Write-Host “It’s time to chill out; your task has been completed with success."
