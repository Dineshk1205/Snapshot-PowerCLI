$vms = Get-Content "/Users/dinesh/snap/list.csv"                                                                        
$vm = get-vm $vms  
#$vm | Remove-snapshot
Get-VM $vm | Get-Snapshot | % { Remove-Snapshot $_ -Confirm:$false }   
Write-Host "Hi there, the Snapshot has been deleted successfully. In case there are any remaining snapshots associated with the VM, I will provide a list below. If there are no snapshots, the list will be empty.”
Get-VM $vm | Get-Snapshot | select VM, Name, Created | Format-Table -AutoSize 
