# Чтение содержимого файла и копирование его в буфер обмена с указанием кодировки UTF-8
$fileContent = Get-Content 'C:\Translater\output.txt' -Raw -Encoding UTF8
$fileContent = $fileContent.TrimEnd()
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Clipboard]::SetText($fileContent)
