---
external help file: PSGitLab-help.xml
Module Name: PSGitLab
online version:
schema: 2.0.0
---

# New-GitLabRunner

## SYNOPSIS
Creates a new GitLab runner.

## SYNTAX

```
New-GitLabRunner [-Token] <String> [-Description] <String> [-Tags] <String> [[-RunUntagged] <Boolean>]
 [[-Locked] <Boolean>] [-Platform] <String> [-Architecture] <String> [-Executor] <String>
 [[-Artifacts] <Boolean>] [[-Cache] <Boolean>] [[-Image] <Boolean>] [[-Services] <Boolean>]
 [[-Shared] <Boolean>] [[-Variables] <Boolean>] [-Name] <String> [-Revision] <String> [-Version] <String>
 [<CommonParameters>]
```

## DESCRIPTION
Creates a new GitLab runner.

## EXAMPLES

### EXAMPLE 1
```
New-GitLabRunner -Token T0k3n -Name "Quamotion" -Description "Quamotion" -Tags "quamotion" -Platform linux -Architecture amd64 -Executor shell -Revision c1ecf97f -Version "10.1.0"
```

## PARAMETERS

### -Architecture
The CPU architecture of the platform which hosts this runner, such as AMD64.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Artifacts
Whether this runner supports artifacts.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Cache
Whether this runner supports caching.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
A description of the runner.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Executor
The executor which this runner uses.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: shell, docker, docker-ssh, ssh, parallels, virtualbox, docker+machine, docker-ssh+machine, kubernetes

Required: True
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Image
Whether this runner support images.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Locked
{{Fill Locked Description}}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name for the runner.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Platform
The platform which hosts this runner, such as Windows or Linux.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Revision
The revision of the runner software.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 15
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RunUntagged
{{Fill RunUntagged Description}}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Services
{{Fill Services Description}}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Shared
Whether this runner is shared.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
A comma-delimited list of tags to assign to the runner.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Token
The runner registration token.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Variables
Whether this runner supports variables.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Version
The version of the runner software.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 16
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
