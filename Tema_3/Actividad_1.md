## Actividad 1 - Instalacion DOcker
Primero actualizo el listado de paquetes<br>
```
sudo apt update && sudo apt upgrade
```
<img width="941" height="543" alt="image" src="https://github.com/user-attachments/assets/c65cc2e7-a439-4893-a713-df3f0dce692f" /><br>
Instalamos curl para poder descargarnos a través de una URL:<br>
```
sudo apt install ca-certificates curl
```
<img width="928" height="317" alt="image" src="https://github.com/user-attachments/assets/c28cdb55-4d10-466e-822b-14e5d156bf8b" /><br>
Ahora para poder verificar la autenticidad de los paquetes que descargamos del repositorio de Docker, necesitamos añadir su clave GPG al sistema.<br>
```
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
```
<img width="909" height="48" alt="image" src="https://github.com/user-attachments/assets/abde7f06-6e97-47ba-9980-95a28c84d6ef" /><br>
Añadimos el repositorio a apt<br>
```
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF
```
<img width="694" height="219" alt="image" src="https://github.com/user-attachments/assets/d771c1cf-3f3f-401f-a76a-ec904804e364" /><br>
Hacemos un update e instalamos la ultima version de docker<br>
```
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```
<img width="936" height="408" alt="image" src="https://github.com/user-attachments/assets/ce76b88c-762a-417f-ba12-9601bb31b1a8" /><br>
Ahora comprobamos que se ha instalado correctamente<br>
```
sudo systemctl status docker
```
<img width="934" height="365" alt="image" src="https://github.com/user-attachments/assets/7f00ec67-dceb-40db-b4c4-b98002ee400f" /><br>
