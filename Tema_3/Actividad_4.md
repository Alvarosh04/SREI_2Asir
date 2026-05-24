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
<img width="932" height="486" alt="image" src="https://github.com/user-attachments/assets/0b31ef86-12be-44af-a6db-d2beead3af8f" /><br>
Comprobamos<br>
<img width="928" height="252" alt="image" src="https://github.com/user-attachments/assets/f504ce2f-52e4-44f9-8b53-a556c2afb034" /><br>

## Despliegue de la aplicación Temperaturas

Creamos una red paraa conectar<br>
<img width="585" height="37" alt="image" src="https://github.com/user-attachments/assets/16bbb87a-6e1e-456c-af1e-4e209102604e" /><br>
Descargamos todo<br>
<img width="937" height="178" alt="image" src="https://github.com/user-attachments/assets/dcd8f7f9-dd96-4e67-990e-8a9aa2c7a2e1" /><br>
Comprobamos<br>
<img width="934" height="588" alt="image" src="https://github.com/user-attachments/assets/1900c021-bfc2-456d-a0e6-fa1a69f39964" /><br>

## Despliegue de Wordpress + mariadb

Creamos la red<br>
<img width="526" height="56" alt="image" src="https://github.com/user-attachments/assets/8f7ca0e7-7843-41c8-b9c3-0b023080d408" /><br>
Creamos<br>
<img width="632" height="338" alt="image" src="https://github.com/user-attachments/assets/d6580fc2-e4a4-407b-8647-e268f6c1c4c0" /><br>
<img width="782" height="525" alt="image" src="https://github.com/user-attachments/assets/0d687174-7cab-48ba-891a-8f5ab10fdb4f" /><br>
Comprobamos<br>
<img width="925" height="590" alt="image" src="https://github.com/user-attachments/assets/96891565-2224-42b1-b802-71c42ed00e31" /><br>


