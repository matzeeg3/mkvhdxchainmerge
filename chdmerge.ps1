##$1 = "MKOPENHAB_root_7200B1DA-414B-4709-B07D-0C14C0BCBD1F"
## run once
## $startvhdpath = Read-Host -Prompt "VHD"
$i=0
while ($i -lt 10) {
$startvhd = get-vhd $startvhdpath
Merge-VHD -Force -Path $startvhdpath
$startvhdpath = $startvhd.ParentPath
write-host $1
$i++}
