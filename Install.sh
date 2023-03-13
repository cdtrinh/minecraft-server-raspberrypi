#Install Minecraft Server dependencies
mkdir /apps
cd /apps
sudo apt update
sudo apt upgrade -y
sudo apt install openjdk-17-jdk -y

#Download Minecraft Server
mkdir mcserver
cd mcserver
wget https://piston-data.mojang.com/v1/objects/c9df48efed58511cdd0213c56b9013a7b5c9ac1f/server.jar

#Launch Minecraft Server to extract files
java -Xmx1024M -Xms1024M -jar server.jar

####  After first launch, it will error about the EULA. Update the eula.txt file with eula=true  ####

#Install Plugins
mkdir plugins
cd /apps/mcserver/plugins
wget -O NoSpawnChunks.jar https://files.pimylifeup.com/minecraft/NoSpawnChunks.jar

# Starting Server
java -Xmx1024M -Xms1024M -jar server.jar


#Set Matthew as Op
/op Matskotkiller