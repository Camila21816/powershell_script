# Prerequisites – Actualizamos el sistema y agregamos repositorios necesarios

# Actualiza la lista de paquetes del sistema
sudo apt-get update

# Instala paquetes necesarios para descargar e instalar repositorios externos
sudo apt-get install -y wget apt-transport-https software-properties-common

# Obtiene la versión de Ubuntu que está corriendo el Codespace
source /etc/os-release

# Descarga las llaves del repositorio oficial de Microsoft
wget -q https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb

# Registra esas llaves en el sistema (permite instalar software de Microsoft)
sudo dpkg -i packages-microsoft-prod.deb

# Elimina el archivo descargado para mantener limpio el sistema
rm packages-microsoft-prod.deb

# Vuelve a actualizar la lista de paquetes ya con el repositorio de Microsoft incluido
sudo apt-get update

###################################
# Install PowerShell – Instalación final de PowerShell

# Instala PowerShell desde el repositorio de Microsoft
sudo apt-get install -y powershell

# Inicia PowerShell (cambia de Bash a PowerShell)
pwsh
