# Replace 'ProjectPath' with the path to your Unreal project's 'Content' folder
$ProjectPath = "C:\Repositories\QuantumQuandary\Content"

# List of folders to create
$Folders = @(
    "Art\Characters",
    "Art\Environment",
    "Art\Textures",
    "Art\Materials",
    "Art\UI",
    "Art\Effects",
    "Blueprints\Characters",
    "Blueprints\Environment",
    "Blueprints\UI",
    "Blueprints\General",
    "Maps\Main",
    "Maps\Test",
    "Audio",
    "Cinematics",
    "Data"
)

# Create each folder and placeholder.txt file
foreach ($Folder in $Folders) {
    $FolderPath = Join-Path -Path $ProjectPath -ChildPath $Folder
    New-Item -ItemType Directory -Path $FolderPath -Force | Out-Null
    $PlaceholderPath = Join-Path -Path $FolderPath -ChildPath "placeholder.txt"
    New-Item -ItemType File -Path $PlaceholderPath -Force | Out-Null
}
