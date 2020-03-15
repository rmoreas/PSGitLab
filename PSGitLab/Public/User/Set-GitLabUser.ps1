Function Set-GitLabUser {
    [cmdletbinding()]
    param(
        [ValidateNotNullOrEmpty()]
        [Parameter(Mandatory=$true,ParameterSetName='ID')]
        [string]$ID,

        [ValidateNotNullOrEmpty()]
        [Parameter(Mandatory=$true,ParameterSetName='Email')]
        [string]$Email,

        [ValidateNotNullOrEmpty()]
        [Parameter(Mandatory=$true,ParameterSetName='Username')]
        [string]$Username,

        #[string]$NewEmail = $null,
        [string]$Password,
        [string]$NewUsername,
        [string]$Name,
        [string]$SkypeID,
        [string]$LinkedIn,
        [string]$Twitter,
        [string]$WebsiteURL,
        [int]$ProjectsLimit,
        [switch]$Admin,
        [switch]$CanCreateGroup,
        [switch]$External,

        [switch]$Passthru
    )

    switch ($PScmdlet.ParameterSetName ) {
        'Email' { $User = Get-GitLabUser -Email $Email }
        'Username' { $User = Get-GitLabUser -Username $UserName }
        'ID' { $User = Get-GitLabUser -id $ID }
    }

    $Body = @{}

    #if ($NewEmail -ne $null ) { $Body.Add('email',$NewEmail) }
    if ($PSBoundParameters.ContainsKey('Password')) { $Body.Add('password',$Password) }
    if ($PSBoundParameters.ContainsKey('NewUsername')) { $Body.Add('username',$NewUsername) }
    if ($PSBoundParameters.ContainsKey('Name')) { $Body.Add('name',$Name) }
    if ($PSBoundParameters.ContainsKey('SkypeID')) { $Body.Add('skype',$SkypeID) }
    if ($PSBoundParameters.ContainsKey('LinkedIn')) { $Body.Add('linkedin',$LinkedIn) }
    if ($PSBoundParameters.ContainsKey('Twitter')) { $Body.Add('twitter',$Twitter) }
    if ($PSBoundParameters.ContainsKey('WebsiteURL')) { $Body.Add('website_url',$WebsiteURL) }
    if ($PSBoundParameters.ContainsKey('ProjectsLimit')) { $Body.Add('projects_limit',$ProjectsLimit) }
    if ($Admin.IsPresent ) { $Body.Add('admin','true') }
    if ($CanCreateGroup.IsPresent ) { $Body.Add('can_create_group','true') }
    if ($External.IsPresent ) { $Body.Add('external','true') }

    $Request = @{
        URI = "/users/$($User.ID)"
        Method = 'PUT'
        Body = $Body
        ContentType = 'application/x-www-form-urlencoded'
    }

    #Write-Debug -Message "Before Request"
    Write-Verbose "Body: $( $Body | ConvertTo-Json ) "

    $Results = QueryGitLabAPI -Request $Request -ObjectType 'GitLab.User'
    if ($Passthru.IsPresent) {
        $Results
    }
}
