Function Get-GitLabProject {
    [cmdletbinding(DefaultParameterSetName='All')]
    [OutputType("GitLab.Project")]
    param(

        [Parameter(ParameterSetName='Single',
                   Mandatory=$true)]
        [int]$Id,
        [Parameter(ParameterSetName='PerGroup',
                   Mandatory=$true)]
        [int]$GroupId,

        [Parameter(Mandatory=$false,
                   ParameterSetName='All',
                   HelpMessage='Return only archived projects')]
        [Parameter(Mandatory=$false,
                   ParameterSetName='PerGroup',
                   HelpMessage='Return only archived projects')]
        [switch]$Archived = $false,

        [Parameter(Mandatory=$false,
                   HelpMessage='Limit by visibility',
                   ParameterSetName='All')]
        [Parameter(Mandatory=$false,
                   HelpMessage='Limit by visibility',
                   ParameterSetName='PerGroup')]
        [ValidateSet("public", "internal", "private","none")]
        $Visibility = 'none',

        [Parameter(Mandatory=$false,
                   HelpMessage='Choose the order in which projects are returned.',
                   ParameterSetName='All')]
        [Parameter(Mandatory=$false,
                   HelpMessage='Choose the order in which projects are returned.',
                   ParameterSetName='PerGroup')]
        [ValidateSet('id','name','path','created_at','updated_at','last_activity_at')]
        $Order_by = 'created_at',

        [Parameter(Mandatory=$false,
                   HelpMessage='Ascending or Descending',
                   ParameterSetName='All')]
        [Parameter(Mandatory=$false,
                   HelpMessage='Ascending or Descending',
                   ParameterSetName='PerGroup')]
        [ValidateSet('asc','desc')]
        $Sort = 'desc',

        [Parameter(Mandatory=$false,
                   HelpMessage='Search for a project.',
                   ParameterSetName='All')]
        [Parameter(Mandatory=$false,
                   HelpMessage='Search for a project.',
                   ParameterSetName='PerGroup')]
        $Search,

        [Parameter(ParameterSetName='All',
                   Mandatory=$false)]
        [Parameter(ParameterSetName='PerGroup',
                    Mandatory=$false)]
        [switch]$Owned,

        [Parameter(ParameterSetName='All',
                   Mandatory=$false)]
        [Parameter(ParameterSetName='PerGroup',
                    Mandatory=$false)]
        [switch]$Starred,

        [Parameter(Mandatory=$false,
                   HelpMessage='Include project statistics')]
        [switch]$Statistics
    )

    if ($PSCmdlet.ParameterSetName -ne 'Single') {
        Write-Verbose "Create GET Request"
        $GetUrlParameters = @()

        if ($Owned) {
            $GetUrlParameters += @{owned='true'}
        }
        if ($Starred) {
            $GetUrlParameters += @{starred='true'}
        }
        if ($archived) {
            $GetUrlParameters += @{archived='true'}
        } else {
            $GetUrlParameters += @{archived='false'}
        }
        
        if ($search -ne $null) {
            $GetUrlParameters += @{search=$search}
        }
        $GetUrlParameters += @{order_by=$order_by}
        $GetUrlParameters += @{sort=$sort}
        $GetUrlParameters += @{per_page=100}
        if ($Statistics) {
            $GetUrlParameters += @{statistics=$true}
        }
        $URLParameters = GetMethodParameters -GetURLParameters $GetUrlParameters
        #$Request.URI = "$($Request.URI)" + "$URLParameters"
    } else {
        $URLParameters = ''
        if ($Statistics) {
            $URLParameters = GetMethodParameters -GetURLParameters @{statistics=$true}
        }
    }


    $Request = @{
        URI = ''
        Method = 'GET'
    }

    Write-Verbose "Parameter Set Name: $($PSCmdlet.ParameterSetName)"

    switch ($PSCmdlet.ParameterSetName) {
        All { $Request.URI = "/projects$URLParameters"; break; }
        PerGroup { $Request.URI = "/groups/$GroupId/projects$URLParameters"; break; }
        Single { $Request.URI="/projects/$Id$URLParameters"; break; }
        default { Write-Error "Incorrect parameter set."; break; }

    }

    QueryGitLabAPI -Request $Request -ObjectType 'GitLab.Project'

}
