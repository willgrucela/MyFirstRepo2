$winGetPackages = 'Microsoft.Powershell', 'Git.Git', 'Microsoft.VisualStudioCode'
foreach ($winGetPackage in $winGetPackages) 
{ Invoke-Expression "winget install $winGetPackage --accept-package-agreements --accept-source-agreements" }  
$gitextensions = @(
    'ms-vscode.powershell' ,
    'github.remotehub', 
    'github.vscode-pull-request-github', 
    'ms-vscode.remote-repositories'
)
foreach ($extension in $gitextensions)
{
    Invoke-Expression "code --install-extension $extension"
}

#you might have to restart your console before running these commands.
#Change the name to your name if desired
$name = 'Student.Name'
git config --global user.name $name
git config --global user.email "$name@contoso.com"
git config --global core.editor 'code --wait'

#For Git lab setup
<#
Install-GITModules
Initialize-GitRepo
#>

git remote add origin https://github.com/willgrucela/MyFirstRepo.git
git branch -M main
git push -u origin main