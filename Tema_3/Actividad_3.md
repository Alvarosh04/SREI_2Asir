## Actividad 3
# Imagen de Ubuntu
```
docker pull ubuntu
```
<img width="539" height="91" alt="image" src="https://github.com/user-attachments/assets/33d6b7cb-adb7-4dc2-a34d-71228dfb72bf" />

## Imagen de Hello-World
```
docker pull hello-world
```
<img width="517" height="93" alt="image" src="https://github.com/user-attachments/assets/fa1cddd5-3bea-4062-be57-74807cb9309b" />

## Imagen de nginx
```
docker pull nginx
```
<img width="566" height="233" alt="image" src="https://github.com/user-attachments/assets/f3f79614-874c-46c1-af4b-4ad0f5df2184" />

## Listado de todas las imagenes
```
docker images
```
<img width="456" height="124" alt="image" src="https://github.com/user-attachments/assets/66bbabc0-5cab-4106-8bc8-b1cd69e5978a" />

## Contenedor hello-world con nombre "myhello1"
```
docker run --name myhello1 hello-world
```
<img width="605" height="350" alt="image" src="https://github.com/user-attachments/assets/166e8a81-4622-4656-9d4b-06bc3c13f87a" />

## Contenedor hello-world con nombre "myhello2"
```
docker run --name myhello2 hello-world
```
<img width="619" height="344" alt="image" src="https://github.com/user-attachments/assets/7c39072a-f42c-4e50-9c56-09cd15cf507d" />

## Contenedor hello-world con nombre "myhello3"
```
docker run --name myhello3 hello-world
```
<img width="616" height="337" alt="image" src="https://github.com/user-attachments/assets/110e2483-aa73-4eae-8c58-a1c697d91ddb" />

## Muestra los contenedores que se están ejecutando
```
docker ps -a
```
<img width="946" height="237" alt="image" src="https://github.com/user-attachments/assets/37780e4f-47bd-49fe-aebf-dca3a28c6c29" />


## Para el contenedor "myhello1"
```
docker stop myhello1
```
<img width="458" height="33" alt="image" src="https://github.com/user-attachments/assets/27bbac9a-fc24-4a8a-8309-a6755e45150e" />

## Para el contenedor "myhello2"
```
docker stop myhello2
```
<img width="484" height="34" alt="image" src="https://github.com/user-attachments/assets/3778e235-55a1-4751-b95a-ee237a8a1ccd" />

## Borra el contenedor "myhello1"
```
docker rm myhello1
```
<img width="456" height="36" alt="image" src="https://github.com/user-attachments/assets/1a2c7789-8654-43d4-ae9d-52238f5161c2" />

## Muestra los contenedores que se están ejecutando.
```
docker ps -a
```
<img width="942" height="189" alt="image" src="https://github.com/user-attachments/assets/c5d6d6c4-166c-4859-b02f-c420a9c4371e" />

## Borra todos los contenedores
```
docker rm -f $(docker ps -aq)
```
<img width="526" height="154" alt="image" src="https://github.com/user-attachments/assets/7262ce91-93fa-4ad8-b756-85e9803b8fdc" />


