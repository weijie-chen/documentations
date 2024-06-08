# install poetry explicitly with specified python interpretor
(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | & "C:\Program Files\Python312\python.exe"

# let poetry use the base python interpretor
poetry env use "C:\Program Files\Python312\python.exe"