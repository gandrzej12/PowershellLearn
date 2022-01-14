$s = "powershell xd"
$s | Get-Member | more # takie cos daje info o komendzie

#if example
If (<whatever>){
}
ELSEIF(<whatever>){
}
Else{
}
if($age -ge 55){}

#for each
# $_  is important this is the item
2,5,6,7,8 | ForEach {$_ * 3}
Get-Smbshare -CimSession $_ | WHERE{-Not $_.Special} | Select PSComputername, Path,Description

#with enumerator
$n= 1..10
foreach ($item in $n){
    $file="TestFile-$item.txt"
    New-Item $file
}

#Arrays
#0 based indexing
$n= 1..5 #it is array
$n.count
#5
$n[1]
#2

$arr= @()
$arr += 100

$b = "jeff","jason","ghoul","pigeon"
$b -is [array] #tset if something is array


$st = 'a,b,c,d,e,f,g,h,i,j' #its not an array!
$t -is [array] #this will be flase
$split = $t.Split(",") # to podzieli stringa na elementy oddzielone przez ,


$hash=@{Name="jeff";Color="green";Version...}

$h = [ordered]@{
    ComputerName= 'adad'
    ClassName= 'ad'
    Filter='adad'
    Verbose= $true
}


#-------------------------------------------------------------------------
#Pipelines
asd | asdad | asd | asd | asd | asd | asd

#try catch
Try{
    Get-Service bits -computername
    $computername -ErrorAction Stop # very important
}
Catch{
    Write-Warning "Failed to get service from $computername. $($_.exception.message)"
}


[math]

[math].GetMembers() | Select Name,MemberType -unique | sort MemberType,Name | more #pokazuje nam metody z klasy math

[math]::PI
[math]::Pow(2,3)


#weird stuff
$wsh = new-object -com wscript.shell
$wsh.Popup.OverloadDefinitions
int Popup (string, Variant, Variant, Variant)
$wsh.Popup("Isnt't this fun?",10,"Powershell Learning",0+64)

$host.ui.RawUI.backgroundColor = "black"
cls

$fg = $host.ui.RawUI.ForegroundColor
get-service | foreach{
    if($_.status -eq 'stopped'){
        $host.ui.RawUI.ForegroundColor = "red"
    }else{
        $host.ui.RawUI.ForegroundColor = "green"
    }
    $_
}
$host.ui.RawUI.ForegroundColor=$fg

#--------------------------------
get-eventlog -Newest 10


