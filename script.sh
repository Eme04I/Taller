buscar_archivos() {
    echo "Introduce el directorio donde buscar:"
    read dir
    echo "Introduce el patrón de búsqueda (ej. *.txt):"
    read patron
    archivos=$(ls "$dir"/$patron 2>/dev/null)
    echo "Archivos encontrados:"
    echo "$archivos"
}
git init
mostrar_contenido_base64() {
    echo "Introduce el nombre del archivo:"
    read archivo
    if [[ -f "$archivo" ]]; then
        cat "$archivo" | base64
    else
        echo "Archivo no encontrado."
    fi
}

cambiar_permisos() {
    echo "Introduce el nombre del archivo:"
    read archivo
    if [[ -f "$archivo" ]]; then
        echo "Introduce los permisos (ej. 755):"
        read permisos
        chmod "$permisos" "$archivo"
        echo "Permisos cambiados."
    else
        echo "Archivo no encontrado."
    fi
}

ordenar_archivos() {
    echo "Introduce el directorio donde buscar:"
    read dir
    echo "Introduce el patrón de búsqueda (ej. *.txt):"
    read patron
    archivos=$(ls "$dir"/$patron 2>/dev/null | sort)
    echo "Archivos ordenados:"
    echo "$archivos"
}

mostrar_tipo_archivo() {
    echo "Introduce el nombre del archivo:"
    read archivo
    if [[ -f "$archivo" ]]; then
        tipo=$(file "$archivo")
        echo "Tipo de archivo: $tipo"
    else
        echo "Archivo no encontrado."
    fi
}

filtrar_archivos() {
    echo "Introduce el directorio donde buscar:"
    read dir
    echo "Introduce el patrón de búsqueda (ej. *.txt):"
    read patron
    echo "Introduce el patrón de filtrado (ej. error):"
    read filtro
    archivos=$(grep -rl "$filtro" "$dir"/$patron 2>/dev/null)
    echo "Archivos filtrados:"
    echo "$archivos"
}
