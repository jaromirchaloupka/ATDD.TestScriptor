# ATTD TestScriptor
#
# https://www.powershellgallery.com/packages/ATDD.TestScriptor/0.0.7
#
# Extended
#


function Create-DestFile
{
    $DestFile = $DestPath + $Feature + '_' + $SubFeature + '.ps1'    
    $ALFile = ($Feature + $SubFeature) -replace '\s',''
    $DestALFile = $DestPath + '.al\' + $ALFile +'.al'

    $Output = 'Install-Module -Name ATDD.TestScriptor' + "`n" +
              '$Features = @()' + "`n" +
              '$Features += ' + "`n" +
               $Features + "`n" +
              '$Features | `' + "`n" +
              'ConvertTo-ALTestCodeunit `' + "`n" +
              '    -CodeunitID ' + $ObjectID + ' `' + "`n" +
              '    -CodeunitName ''' + $Feature + ' ' + $SubFeature + ''' `' + "`n" +
              '    -InitializeFunction `' + "`n" +
              '    -GivenFunctionName "Create {0}" `' + "`n" +
              '    -ThenFunctionName "Verify {0}" `' + "`n" +
              '      | Out-File ''' + $DestALFile + ''''
    
    Out-File -FilePath $DestFile -InputObject $Output -Encoding ASCII
}


$SourcePath = $PSScriptRoot + '\'
$DestPath = $PSScriptRoot + '\Output\'
$SourceFile = "ATDD.Scenarios.xlsx"
$SheetName = "ATDD Scenarios"
$ObjectID = 50100

$objExcel = New-Object -ComObject Excel.Application
$objExcel.Visible = $false
$WorkBook = $objExcel.Workbooks.Open($SourcePath + $SourceFile)
$WorkSheet = $WorkBook.sheets.item($SheetName)

$WorkSheetRange = $WorkSheet.UsedRange
$RowCount = $WorkSheetRange.Rows.Count

$Features = @()
$FeatureOpened = $false
$LastScenarioNo = 0

For ($i=2; $i -lt $RowCount; $i++)
{
    $GivenWhenThen = $WorkSheet.Range("F"+$i).Text    
    $Scenario = $WorkSheet.Range("H"+$i).Text

    if (([string]::IsNullOrEmpty($GivenWhenThen)) -and ([string]::IsNullOrEmpty($Scenario)))
    {        
        if ($FeatureOpened -eq $true)
        {
             $Features += '    }' + "`n"
             $Features += '}' + "`n"
             $LastScenarioNo = 0
             Create-DestFile
             $Features = @()
             $ObjectID += 1 
        }
        $Feature = $WorkSheet.Range("A"+$i).Text
        $SubFeature = $WorkSheet.Range("B"+$i).Text
        $Features += 'Feature ''' + $Feature + ' ' + $SubFeature + ''' {' + "`n" 
        $FeatureOpened = $true

    } 

    elseif (([string]::IsNullOrEmpty($GivenWhenThen)) -and -not ([string]::IsNullOrEmpty($Scenario)))
    {
        if (([int]$Scenario -ne $LastScenarioNo) -and ($LastScenarioNo -gt 0))
        {
            $Features += '    }' + "`n"
        }
        $ScenarioDesc = $WorkSheet.Range("E"+$i).Text
        $Features += '    Scenario ' + [int]$Scenario + ' ''' + $ScenarioDesc + ''' {' + "`n"
        $LastScenarioNo = [int]$Scenario
    }

    else
    {
        $GivenWhenThenDesc = $WorkSheet.Range("G"+$i).Text
        $Features += '        ' + $GivenWhenThen + ' ''' + $GivenWhenThenDesc + '''' + "`n"
    }  
    
    if ($i -eq $RowCount - 1)
    {
        $Features += '    }' + "`n"
        $Features += '}' + "`n"
        Create-DestFile
        $Features = @()
        $ObjectID += 1  
    }
}


Get-ChildItem $DestPath -Filter *.ps1 | 
Foreach-Object {
    $_.Name
    & $_.FullName
}