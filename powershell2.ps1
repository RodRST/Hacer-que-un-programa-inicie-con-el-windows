# Ruta del programa que deseas ejecutar al inicio
$programPath = "C:\Ruta\A\Tu\Programa.exe"  # Reemplaza con la ruta de tu programa

# Ruta de la carpeta de inicio del usuario actual
$startupFolder = [System.IO.Path]::Combine($env:APPDATA, "Microsoft\Windows\Start Menu\Programs\Startup")

# Nombre del acceso directo
$shortcutName = "MiPrograma.lnk"  # Puedes cambiar el nombre del acceso directo

# Crear un objeto COM para el acceso directo
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut([System.IO.Path]::Combine($startupFolder, $shortcutName))

# Configurar las propiedades del acceso directo
$shortcut.TargetPath = $programPath
$shortcut.Save()

Write-Output "El acceso directo para iniciar el programa se ha creado en la carpeta de inicio."
