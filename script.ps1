#Define una nueva función con el nombre de Start-ProgressBar
function Start-ProgressBar
#Inicio del bloque de la función
{
    #Permite que la función se comporte como un cmdlet con mejor manejo de parámetros, ayuda, etc. Basicamente un Cmdlet avanzado
    [CmdletBinding()]
    #indica que se van a definir parámetros, por eso "param"
    param
    #inicio de la lista de los parámetros a definir
    (
    #indica que el parámetro de Title es obligatorio
        [Parameter(Mandatory = $true)]
        #Parámetro de Title, que contiene el texto que aparecerá en la Progress Bar
        $Title,
        #indica que el parametro de Timer también es obligatorio
        [Parameter(Mandatory = $true)]
        #Define el parámetro, lo convierte en número entero, y representa cuantos segundos durará el proceso
        [int]$Timer
    #Cierra la sección de parámetros
    )
    #inicia un bucle For la cual comienza en 1, y se repite mientras el contador sea menor o igual que el tiempo total, incrementando 1 cada segundo que pasa
    For ($i = 1; $i -le $Timer; $i++)
    #inicio del bloque del bucle
    {
#Detiene la ejecución por 1 segundo, haciendo que la barra avance en intervalos de tiempo reales
        Start-Sleep -Seconds 1;
 #Calcula el porcentaje de avance
        $percentComplete = ($i / $Timer)*100
#Actualiza la progress bar mostrando el título, cuantos srgundo han pasado con la palabra # seconds elapsed# y muestra el avance calculado del 0 al 100
        Write-Progress -Activity $Title -Status "$i seconds elapsed" -PercentComplete $percentComplete
        
    }
#fin del bucle
} 
#Fin de la función
#Llamar la función
Start-ProgressBar -Title "Test timeout" -Timer 30