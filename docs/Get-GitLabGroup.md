---
external help file: PSGitLab-help.xml
Module Name: PSGitLab
online version:
schema: 2.0.0
---

# Get-GitLabGroup

## SYNOPSIS
Retrieve all groups in a GitLab instance.

## SYNTAX

### All (Default)
```
Get-GitLabGroup [-Visibility <Object>] [-Order_by <Object>] [-Sort <Object>] [-Search <Object>] [-Owned]
 [<CommonParameters>]
```

### Subgroups
```
Get-GitLabGroup -Id <Int32> [-Subgroups] [-Visibility <Object>] [-Order_by <Object>] [-Sort <Object>]
 [-Search <Object>] [-Owned] [<CommonParameters>]
```

### Single
```
Get-GitLabGroup -Id <Int32> [<CommonParameters>]
```

## DESCRIPTION
Retrieve all groups in a GitLab instance.
Queries over HTTP and gets back GitLab.Group type.

## EXAMPLES

### EXAMPLE 1
```
Get-GitLabGroup
```

### EXAMPLE 2
```
Get-GitLabGroup -Owned
```

### EXAMPLE 3
```
Get-GitLabGroup -Id 4
```

### EXAMPLE 4
```
Get-GitLabGroup -Search 'ngetchell' -Owned
```

## PARAMETERS

### -Id
The ID of the group.

```yaml
Type: Int32
Parameter Sets: Subgroups, Single
Aliases:

Required: True
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Order_by
Return groups ordered by id, name, path, created_at, updated_at, or last_activity_at fields.
Default is created_at.

```yaml
Type: Object
Parameter Sets: All, Subgroups
Aliases:
Accepted values: id, name, path

Required: False
Position: Named
Default value: Created_at
Accept pipeline input: False
Accept wildcard characters: False
```

### -Owned
Return all owned groups.

```yaml
Type: SwitchParameter
Parameter Sets: All, Subgroups
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Search
Return list of authorized groups matching the search criteria.

```yaml
Type: Object
Parameter Sets: All, Subgroups
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Sort
Return groups sorted in asc or desc order.
Default is desc.

```yaml
Type: Object
Parameter Sets: All, Subgroups
Aliases:
Accepted values: asc, desc

Required: False
Position: Named
Default value: Desc
Accept pipeline input: False
Accept wildcard characters: False
```

### -Subgroups
{{ Fill Subgroups Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Subgroups
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Visibility
Limit by visibility public, internal, or private.

```yaml
Type: Object
Parameter Sets: All, Subgroups
Aliases:
Accepted values: public, internal, private

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### GitLab.Group

## NOTES

## RELATED LINKS
