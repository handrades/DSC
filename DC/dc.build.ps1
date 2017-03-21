task Deploy {

    'Deploy'

}

task Test {

    Invoke-Pester "$PSScriptRoot\Tests\*.tests.ps1"
    'Test'

}

task Build {

    'Build'

}

task Clean {

    'Clean'

}