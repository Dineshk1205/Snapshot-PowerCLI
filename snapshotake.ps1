$vms = Get-Content "/Users/dinesh/snap/list.csv"
$vm = get-vm $vms  
$vm | new-snapshot -name CHG0123456 -Memory
Write-Host "Hey, the Snapshot has been successfully taken. I'll print the VM name and Snapshot details for your reference in just a moment.”
Get-VM $vm | Get-Snapshot | select VM, Name, Created | Format-Table -AutoSize 
Write-Host “It’s time to chill out; your task has been completed with success."
