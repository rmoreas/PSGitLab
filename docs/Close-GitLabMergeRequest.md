---
external help file: PSGitLab-help.xml
Module Name: PSGitLab
online version:
schema: 2.0.0
---

# Close-GitLabMergeRequest

## SYNOPSIS
Closes your GitLab merge requests.

## SYNTAX

```
Close-GitLabMergeRequest [-ProjectId] <String> [-ID] <String[]> [-Passthru] [<CommonParameters>]
```

## DESCRIPTION
Closes your GitLab merge requests.

## EXAMPLES

### EXAMPLE 1
```
Close-GitLabMergeRequest -ProjectId 8 -Id 32
```

## PARAMETERS

### -ID
The ID of the Merge request you'd like to close.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Passthru
Whether to return closed Merge Request object to the pipeline.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProjectId
The ID of a project.

```yaml
Type: String
Parameter Sets: (All)
Aliases: project_id

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
