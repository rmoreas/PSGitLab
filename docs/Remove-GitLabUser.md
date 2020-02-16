---
external help file: PSGitLab-help.xml
Module Name: PsGitlab
online version:
schema: 2.0.0
---

# Remove-GitLabUser

## SYNOPSIS
User to get rid of users.

## SYNTAX

```
Remove-GitLabUser [-Username] <String> [-HardDelete] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Used to get rid of users.

## EXAMPLES

### EXAMPLE 1
```
Search-GitLabUser -User 'fake' | Remove-GitLabUser
```

## PARAMETERS

### -Confirm
Whether to continue or not.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HardDelete
Delete user contributions that would usually be moved to the ghost user,
as well as groups owned solely by this user.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Username
The username of the user being removed.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -WhatIf
Run without making modifications.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

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

## NOTES

## RELATED LINKS
