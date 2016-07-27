Param(
    # comma- or semicolon-separated list of Chocolatey packages.
    [ValidateNotNullOrEmpty()]
    [Parameter(Mandatory=$True)]
    [string] $packageList
)

exit 1