# Define paths to Poetry directories
$poetryPaths = @(
    "$env:APPDATA\Roaming\pypoetry",
    "$env:APPDATA\Python\Scripts\poetry.exe",
    "$env:USERPROFILE\.poetry",
    "$env:LOCALAPPDATA\pypoetry",
    "C:\Users\user\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\LocalCache\local-packages\Python312\Scripts\poetry.exe",
    "C:\Users\user\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\LocalCache\local-packages\Python312\site-packages\poetry",
    "C:\Users\user\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\LocalCache\Roaming\pypoetry",
    "C:\Users\user\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\LocalCache\Roaming\pypoetry\venv\Lib\site-packages\poetry",
    "C:\Users\user\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\LocalCache\Roaming\pypoetry\venv\Scripts\poetry.exe",
    "C:\Users\user\AppData\Local\Temp\tmpy_4yonrr\.venv\poetry.lock"
)

# Function to remove directories and files
function Remove-PoetryFiles {
    param (
        [string[]]$paths
    )

    foreach ($path in $paths) {
        if (Test-Path $path) {
            try {
                Remove-Item -Recurse -Force $path -ErrorAction Stop
                Write-Output "Removed: $path"
            } catch {
                Write-Output "Failed to remove: $path - $_"
            }
        } else {
            Write-Output "Path not found: $path"
        }
    }
}

# Run the function to remove Poetry-related files
Remove-PoetryFiles -paths $poetryPaths
