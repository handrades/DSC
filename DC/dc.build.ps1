task default Build, Clean, Test

task Test {

    Invoke-Pester "$PSScriptRoot\Tests\*.tests.ps1"
    $testMessage

}

task Clean {

    $cleanMessage

}

task Build {

    $BuildMessage

}