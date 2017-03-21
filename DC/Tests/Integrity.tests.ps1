Describe "Environment" {
    
    Context "Verifies default files and folder existence" {
        
        It '.\build.psake.ps1 file exists' {
            $result = Test-Path -Path "$PSScriptRoot\..\dc.build.ps1"
            $result | Should Be $true
        }
        
        It 'Tests folder exists' {
            $result = Test-Path -Path "$PSScriptRoot"
            $result | Should Be $true
        }

        It 'Tests\Integrity.tests.ps1 file exists' {
            $result = Test-Path -Path "$PSScriptRoot\Integrity.tests.ps1"
            $result | Should Be $true
        }

        It 'Tests\DoesNotExists.ps1 file does not exist' {
            $result = Test-Path -Path "$PSScriptRoot\DoesNotExists.ps1"
            $result | Should Be $false
        }

    }

}