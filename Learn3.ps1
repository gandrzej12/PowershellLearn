
$a=1..10
$a.count

$a -is [array]

$a | foreach-object {$_ *2}

$a | foreach-object {$_ *2} | Measure-Object -sum

foreach($number in $a){$number *2}


get-process | where starttime | foreach{
[PSCustomObject]@{
    Name = Value
}]

}

$data = @() #empty array

