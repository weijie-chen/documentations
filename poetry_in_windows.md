# Check everywhere if poetry still persists, manual delete if necessary
```Get-ChildItem -Path $env:APPDATA -Recurse -Include "*poetry*" -ErrorAction SilentlyContinue```
```Get-ChildItem -Path $env:USERPROFILE -Recurse -Include "*poetry*" -ErrorAction SilentlyContinue```
```Get-ChildItem -Path $env:LOCALAPPDATA -Recurse -Include "*poetry*" -ErrorAction SilentlyContinue```

# Install explicity with specified Python interpretor 
```(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | & "C:\Program Files\Python312\python.exe" -```


# Check if what poetry env exists in local machine
```poetry env info -p``` or ```poetry env list```, the former will print out the full path of env. 

# install your own package to resolved the dependency from import sibling packages
# at your repo's root level, create setup.py and run
pip install -e .
# this will allow you install your repo in a edit mode, that you don't need to install
# again every time you updated
