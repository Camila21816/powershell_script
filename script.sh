###################################
# Prerrequisitos
#Actualizar la lista de paquetes
sudo apt-get update

#Instalar paquetes de pre-requisitos.
sudo apt-get install -y wget apt-transport-https software-properties-common

#Obtener la versión de Ubuntu
source /etc/os-release

# Descargar el paquete que contiene las llaves y la configuración del repositorio de Microsoft
wget -q https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb

# Instalar el paquete que agrega el repositorio y las llaves de Microsoft
sudo dpkg -i packages-microsoft-prod.deb

# Borrar el archivo de las llaves del repositorio de Microsoft
rm packages-microsoft-prod.deb

#Actualizar la lista de paquetes después de que añadimos packages.microsoft.com
sudo apt-get update

###################################
# Instalar PowerShell
sudo apt-get install -y powershell

# Iniciar PowerShell
pwsh
