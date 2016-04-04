$filePath = "c:\path\to\file";
$elementsCount = 500000;
$iterationsCount = 49
$filePrefix = "part_";
$fileSuffix = ".txt";

for ($i = 0; $i -le $iterationsCount; $i++)
{
    Write-Host ( $filePrefix + $i + ".txt" );
    Get-Content $filePath | Select-Object -Skip ($i * $elementsCount) -First $elementsCount > ( $filePrefix + $i + $fileSuffix );
}