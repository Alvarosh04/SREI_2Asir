## Actividad 2 - Docker

# Hola mundo de Docker
```
docker run hello-world
```
<img width="536" height="414" alt="image" src="https://github.com/user-attachments/assets/cc289943-fa53-4c5b-bf71-b804be495cd8" /><br>
Vemos que al terminar de ejecutarse el proceso, se paran:<br>
<img width="719" height="74" alt="image" src="https://github.com/user-attachments/assets/09189b48-60ca-4bd5-a92a-5ff6f213e666" /><br>
Podemos eliminar el contenedor con su nombre o id:<br>
<img width="745" height="87" alt="image" src="https://github.com/user-attachments/assets/9ba97d4d-fa17-4324-92ea-8487102ca121" /><br>
Con docker run ejecutamos contenedores, y con docker images vemos las imágenes que tenemos descargadas:<br>
<img width="464" height="77" alt="image" src="https://github.com/user-attachments/assets/1dc95ef6-5421-4523-9f51-36d96180b3b7" /><br>

# Ejecutando un contenedor interactivo
Usamos -it para que sea interactiva y nos abra una terminal:<br>
<img width="653" height="132" alt="image" src="https://github.com/user-attachments/assets/b3e09130-ab51-4281-9946-722d22e4d5b0" /><br>
Si salimos nos podemos volver a conectar:<br>
<img width="542" height="64" alt="image" src="https://github.com/user-attachments/assets/67e8c911-0b63-4946-959b-3dd2ff0dd863" /><br>
Con exec ejecutamos comandos dentro del contenedor:<br>
<img width="774" height="364" alt="image" src="https://github.com/user-attachments/assets/acc0a68a-d802-46a9-ab2e-f1ee37172de2" /><br>
Y con inspect nos da su información:<br>
<img width="927" height="511" alt="image" src="https://github.com/user-attachments/assets/2b16aa4a-7c01-49ef-b520-b0540dad8bed" /><br>

## Contenedor Demonio
contenedor demonio, que se ejecuta en segundo plano.<br>
<img width="928" height="287" alt="image" src="https://github.com/user-attachments/assets/157c8e61-bae9-44ff-bb59-7d307ccecccd" /><br>
Ahora lo borramos a la fuerza<br>
<img width="602" height="97" alt="image" src="https://github.com/user-attachments/assets/94a952a4-038d-41bb-8f65-a2cb639c8444" /><br>

## Contenedor con un servidor web
Lo hacemos con la imagen de apache<br>
<img width="939" height="206" alt="image" src="https://github.com/user-attachments/assets/cfd46385-ef28-4690-a3a1-1c8199e1fea9" /><br>
Lo comprobamos<br>
<img width="602" height="160" alt="image" src="https://github.com/user-attachments/assets/ec15dfe9-5eda-4515-9ce5-b9909bff21e7" /><br>
Lo modificamos y comprobamos<br>
<img width="574" height="164" alt="image" src="https://github.com/user-attachments/assets/7599f29d-77f1-4839-8d23-4121524df461" /><br>
## Contenedores con variables de entornos
Para crear una variable de entorno al crear un contenedor usamos el flag -e o --env:<br>
<img width="724" height="73" alt="image" src="https://github.com/user-attachments/assets/2b5f03b5-049c-43f2-b2f6-99d4e9f31b72" /><br>


