---
external help file: PSGitLab-help.xml
Module Name: PSGitLab
online version:
schema: 2.0.0
---

# Set-GitLabRunner

## SYNOPSIS
Updates a runner's details.

## SYNTAX

```
Set-GitLabRunner [-Id] <Int32> [[-Description] <String>] [[-Active] <String>] [[-Tags] <String>]
 [[-RunUntagged] <String>] [[-Locked] <String>] [[-AccessLevel] <String>] [<CommonParameters>]
```

## DESCRIPTION
Updates a runner's details.

## EXAMPLES

### EXAMPLE 1
```
Set-GitLabRunner -Id 400 -Active $true -Locked $false
```

## PARAMETERS

### -AccessLevel
The access level of the runner; not_protected or ref_protected

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: not_protected, ref_protected

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Active
The state of a runner; can be set to true or false.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: True, False, , 0, 1

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
The description of a runner.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
The ID of the GitLab runner to update.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Locked
Flag indicating the runner is locked to the current project.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: True, False, , 0, 1

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RunUntagged
Flag indicating the runner can execute untagged jobs.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: True, False, , 0, 1

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
The comma-separated list of tags for a runner.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Update runner's details](https://docs.gitlab.com/ce/api/runners.html#update-runner-s-details)