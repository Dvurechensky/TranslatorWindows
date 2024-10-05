#!/bin/bash

# Пример скрипта для перевода текста с английского на русский с использованием Google Translate

text="$1"
from="en"
to="ru"

# Перевод текста
translated=$(curl -s "https://translate.googleapis.com/translate_a/single?client=gtx&sl=$from&tl=$to&dt=t&q=$(echo $text | sed 's/[[:space:]]/%20/g')")

# Извлечение переведенного текста
translated_text=$(echo "$translated" | sed 's/\[\[\[\"//' | cut -d '"' -f 1)

# Вывод переведенного текста
echo "$translated_text"