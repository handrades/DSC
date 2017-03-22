Param (
    [String]$LabilityConfig = 'C:\Lability\Configurations',
    [String]$LabilityHD = 'C:\Lability\VMVirtualHardDisks',
    [String]$VM = 'DC',
    [pscredential]$LocalAdmin = $null,
    [pscredential]$DomainAdmin = $null
)

task default Build, Test, Deploy

task setupCreds setupCredentials

task Deploy {

    'Deploy'

}

task Test {

    Invoke-Pester "$PSScriptRoot\Tests\*.tests.ps1"
    'Test'

}

task  Build {

    'Build'

}

task Clean -before Build {

    'Clean'

}

task setupCredentials {

    Get-Credential LocalAdministrator -Message 'Enter local machine administrator password' | Export-Clixml -Path $PSScriptRoot\LocalAdministrator.xml
    Get-Credential DomainAdministrator -Message 'Enter domain administrator password' | Export-Clixml -Path $PSScriptRoot\DomainAdministrator.xml

}