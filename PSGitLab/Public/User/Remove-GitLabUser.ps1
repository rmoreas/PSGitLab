Function Remove-GitLabUser {
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact='High')]
    param(
        [ValidateNotNullOrEmpty()]
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true)]
        [string]$Username
    )

    BEGIN {}

    PROCESS {
        $UserInfo = Get-GitLabUser -Username $Username

        if ($UserInfo) {

            Write-Verbose "$($UserInfo.Username)"
            $Request = @{
                URI="/users/$($UserInfo.ID)"
                Method = 'DELETE'
            }
    
            if ( $PSCmdlet.ShouldProcess("Delete User $($UserInfo.Username)") ) {
                QueryGitLabAPI -Request $Request -ObjectType 'GitLab.User' | Out-Null
            }
    
        }

    }

    END {}

}
