
Write-Host "Hello World!" -ForegroundColor Green

if ($x){
    Write-Host "X already exists! Stay careful" -ForegroundColor Yellow
}
[int32]$x = READ-Host "Enter a new value for X"

Write-Host "Setting `$x to $x" -ForegroundColor Green

#comment? nice
$x+$x
