$computername = $env:COMPUTERNAME
$data = Get-EventLog System -EntryType Error -Newest 1000 -ComputerName $ComputerName |
Group -Property Source -NoElement

#create an HTML report for
$title = "System Log Analysis"
$footer = "<h5>report run $(Get-Date)</h5>"
$css = "http://jdhitsoluitons.com/sample.css"

$data | Sort -Property Count,Namme -Descending |
Select Count,Name |
ConvertTo-Html -Title $Title -PreContent "<H1>$COMPUTERNAME</H1>" -PostContent $footer -CssUri $css |
Out-File C:\Users\agierlak\Documents\programingLearn\powerShellLearn\systemsources.html