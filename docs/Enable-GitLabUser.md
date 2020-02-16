---
external help file: PSGitLab-help.xml
Module Name: PSGitLab
online version:
schema: 2.0.0
---

# Enable-GitLabUser

## SYNOPSIS
Reactivate the specified user

## SYNTAX

### ID (Default)
```
Enable-GitLabUser -ID <String> [-Passthru] [<CommonParameters>]
```

### Username
```
Enable-GitLabUser -Username <String> [-Passthru] [<CommonParameters>]
```

### Email
```
Enable-GitLabUser -Email <String> [-Passthru] [<CommonParameters>]
```

## DESCRIPTION
Reactivates users in deactivated state. Blocked users can not be activated.

## EXAMPLES

### Example 1
```powershell
PS C:\> Enable-GitLabUser -Username John
```

Activates user John.

## PARAMETERS

### -Email
{{ Fill Email Description }}

```yaml
Type: String
Parameter Sets: Email
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ID
{{ Fill ID Description }}

```yaml
Type: String
Parameter Sets: ID
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Passthru
{{ Fill Passthru Description }}

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
{{ Fill Username Description }}

```yaml
Type: String
Parameter Sets: Username
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
