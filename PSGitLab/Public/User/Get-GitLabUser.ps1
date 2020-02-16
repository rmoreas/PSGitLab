Function Get-GitLabUser {
    [cmdletbinding(DefaultParameterSetName='All')]
    [OutputType('GitLab.User')]
    param(
        [Parameter(ParameterSetName='ID')]
        [int]$ID,

        [Parameter(ParameterSetName='All')]
        [switch]$All,

        [Parameter(ParameterSetName='Username')]
        [string]$Username,

        [Parameter(ParameterSetName='Email')]
        [string]$Email,

        [Parameter(ParameterSetName='CurrentUser')]
        [switch]$CurrentUser
    )
    $Request = @{
        URI = '/users'
        Method = 'GET'
    }

    switch ( $PSCmdlet.ParameterSetName) {
        'ID' { $Request.URI = "/users/$ID" }
        'All' { $Request.URI = '/users' }
        'CurrentUser' { $Request.URI = '/user' }
    }

    if ( $PSCmdlet.ParameterSetName -eq 'Username') {

        $Request.Body = @{'username' = $Username}
        QueryGitLabAPI -Request $Request -ObjectType 'GitLab.User'

    } elseif ( $PSCmdlet.ParameterSetName -eq 'Email') {

        $Request.Body = @{'search' = $Email}
        QueryGitLabAPI -Request $Request -ObjectType 'GitLab.User'

    } else {

        QueryGitLabAPI -Request $Request -ObjectType 'GitLab.User'
    }
}
