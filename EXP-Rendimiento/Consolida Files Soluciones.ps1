# Autor: Alexander Rodriguez
# Materia: Computación de Alto Rendimiento
#          Maestría de Inteligencia Artificial
#          Pontificia Universidad Javeriana
# Fecha : Noviembre 2023
# Objetivo : Consolidar resultados generados por Experimentación generando un file CSV para su posterior analisis.
#
# Se debe actualizar la ruta segun la ruta de la carpeta soluciones.

# Directorio que contiene los archivos a combinar
$directorio = "C:\Users\John_\OneDrive\Documentos\Alexander Rodriguez\Estudio\Segundo Semestre\Computacion Alto desempeño\EXP-Rendimiento\Maquina_Primo\Soluciones"

# Obtener la lista de archivos en el directorio
$archivos = Get-ChildItem -Path $directorio -Filter '*MM1c_*'

# Inicializar un array para almacenar todos los datos combinados
$datosCombinados = @()
$A=1
# Recorrer cada archivo, leer su contenido y agregar el nombre del archivo como una nueva columna
foreach ($archivo in $archivos) {

$A
$A++
    $nombreArchivo = $archivo.Name
    $contenido = Get-Content $archivo.FullName

    # Crear un objeto personalizado por cada línea del archivo, agregando el nombre del archivo
    foreach ($linea in $contenido) {
        $datosCombinados += [PSCustomObject]@{
            "Contenido" = $linea
            "NombreArchivo" = $nombreArchivo
        }
    }
}

# Exportar los datos combinados a un nuevo archivo 
$datosCombinados | Export-Csv -Path "C:\Users\John_\OneDrive\Documentos\Alexander Rodriguez\Estudio\Segundo Semestre\Computacion Alto desempeño\EXP-Rendimiento\Maquina_Primo\Soluciones\Consolidados\archivo_combinadoFxF.csv" -NoTypeInformation -Force