Function Get-GitLabGroup
{
  [cmdletbinding(DefaultParameterSetName = 'All')]
  [OutputType("GitLab.Group")]
  param(

    [Parameter(ParameterSetName = 'Single',
      Mandatory = $true)]
    [Parameter(ParameterSetName = 'Subgroups',
      Mandatory = $true)]
    [int]$Id,

    [Parameter(ParameterSetName = 'Subgroups',
      Mandatory = $true)]
    [switch]$Subgroups,

    [Parameter(Mandatory = $false,
      HelpMessage = 'Choose the order in which groups are returned.',
      ParameterSetName = 'All')]
    [Parameter(Mandatory = $false,
      HelpMessage = 'Choose the order in which groups are returned.',
      ParameterSetName = 'Subgroups')]
    [ValidateSet('id', 'name', 'path')]
    $Order_by = 'name',

    [Parameter(Mandatory = $false,
      HelpMessage = 'Ascending or Descending',
      ParameterSetName = 'All')]
    [Parameter(Mandatory = $false,
      HelpMessage = 'Ascending or Descending',
      ParameterSetName = 'Subgroups')]
    [ValidateSet('asc', 'desc')]
    $Sort = 'desc',

    [Parameter(Mandatory = $false,
      HelpMessage = 'Search for a group.',
      ParameterSetName = 'All')]
    [Parameter(Mandatory = $false,
      HelpMessage = 'Search for a group.',
      ParameterSetName = 'Subgroups')]
    $Search,

    [Parameter(ParameterSetName = 'All',
      Mandatory = $false)]
    [Parameter(ParameterSetName = 'Subgroups',
      Mandatory = $false)]
    [switch]$Owned

  )

  if ($PSCmdlet.ParameterSetName -ne 'Single') {
    Write-Verbose "Create GET Request"
    $GetUrlParameters = @()

    if ($search -ne $null) {
      $GetUrlParameters += @{search = $search}
    }
    if ($Owned) {
      $GetUrlParameters += @{owned='true'}
    }

    $GetUrlParameters += @{order_by = $order_by}
    $GetUrlParameters += @{sort = $sort}
    $URLParameters = GetMethodParameters -GetURLParameters $GetUrlParameters
    #$Request.URI = "$($Request.URI)" + "$URLParameters"
  }

  $Request = @{
    URI    = ''
    Method = 'GET'
  }

  Write-Verbose "Parameter Set Name: $($PSCmdlet.ParameterSetName)"

  switch ($PSCmdlet.ParameterSetName)
  {
    All { $Request.URI = "/groups$URLParameters"; break; }
    Single { $Request.URI = "/groups/$Id"; break; }
    Subgroups { $Request.URI = "/groups/$Id/subgroups$URLParameters"; break; }
    default { Write-Error "Incorrect parameter set."; break; }

  }

  QueryGitLabAPI -Request $Request -ObjectType 'GitLab.Group'

}
