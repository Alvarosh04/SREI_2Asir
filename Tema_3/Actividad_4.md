## Actividad 4 - Almacenamiento y redes Docker
Primero se crea la red interna de docker
```
docker network create red_guestbook
```
<img width="561" height="41" alt="image" src="https://github.com/user-attachments/assets/9a45b613-bce9-47e4-850e-3c894e5f9a88" /><br>

Se ejecutan los dos contenedores<br>
```
docker run -d --name redis --network red_guestbook -v /opt/redis:/data redis redis-server --appendonly yes
docker run -d -p 80:5000 --name guestbook --network red_guestbook iesgn/guestbook
```
