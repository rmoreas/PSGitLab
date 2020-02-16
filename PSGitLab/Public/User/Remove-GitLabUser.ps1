Function Remove-GitLabUser {
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact='High')]
    param(
        [ValidateNotNullOrEmpty()]
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [string]$Username,

        [switch]$HardDelete
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
            if ($HardDelete) {
                $Request.Body = @{'hard_delete'='true'}
                $Action = 'Hard Delete'
            } else {
                $Action = 'Delete'
            }
            if ( $PSCmdlet.ShouldProcess("$Action User $($UserInfo.Username)") ) {
                QueryGitLabAPI -Request $Request -ObjectType 'GitLab.User' | Out-Null
            }
    
        }

    }

    END {}

}
