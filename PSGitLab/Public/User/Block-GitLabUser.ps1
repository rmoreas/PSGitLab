Function Block-GitLabUser {
    [cmdletbinding(DefaultParameterSetName='ID')]
    param(
        [Parameter(Mandatory=$True,
                   ParameterSetName='ID',
                   ValueFromPipelineByPropertyName=$true)]
        [string]$ID,

        [Parameter(Mandatory=$True,
                   ParameterSetName='Username')]
        [string]$Username,

        [Parameter(Mandatory=$True,
                   ParameterSetName='Email')]
        [string]$Email,

        [switch] $Passthru = $false
    )

    BEGIN {}

    PROCESS {

        Write-Verbose "$ID"
        switch ($PSCmdlet.ParameterSetName) {
            'ID' { $User = Get-GitLabUser -ID $ID }
            'Email' { $User = Get-GitLabUser -Email $Email }
            'Username' { $User = Get-GitLabUser -Username $Username }
        }

        if ($User -and $User.state -ne 'blocked') {
            $request = @{
                URI = "/users/$($User.ID)/block"
                Method = 'POST'
            }    
            QueryGitLabAPI -Request $Request -ObjectType 'GitLab.User' | Out-Null
            if ($Passthru.IsPresent) {
                Get-GitLabUser -ID $User.ID
            }

        } elseif ($Passthru.IsPresent) {
            $User
        }

    }

    END {}



}
