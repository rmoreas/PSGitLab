---
external help file: PSGitLab-help.xml
Module Name: PSGitLab
online version:
schema: 2.0.0
---

# Disable-GitLabUser

## SYNOPSIS
Deactivate the speficied user

## SYNTAX

### ID (Default)
```
Disable-GitLabUser -ID <String> [-Passthru] [<CommonParameters>]
```

### Username
```
Disable-GitLabUser -Username <String> [-Passthru] [<CommonParameters>]
```

### Email
```
Disable-GitLabUser -Email <String> [-Passthru] [<CommonParameters>]
```

## DESCRIPTION
Deactivating a user is functionally identical to blocking a user,
with the following differences:

- It does not prohibit the user from logging back in via the UI.
- Once a deactivated user logs back into the GitLab UI, their account is set to active.

A deactivated user:

- Cannot access Git repositories or the API.
- Will not receive any notifications from GitLab.
- Will not be able to use slash commands.

## EXAMPLES

### Example 1
```powershell
PS C:\> Disable-GitlabUser -Username John
```

Deactivates user John.

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
