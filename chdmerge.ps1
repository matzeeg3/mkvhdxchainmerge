$startvhdpath = Read-Host -Prompt "VHD Pfad"
$i=0
while ($startvhd -ne "") {
$startvhd = get-vhd $startvhdpath
Merge-VHD -Force -Path $startvhdpath
$startvhdpath = $startvhd.ParentPath
$i=$i+1
write-host $i
}


