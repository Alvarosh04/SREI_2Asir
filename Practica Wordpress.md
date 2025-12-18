1. Creación de VPN <br>
Primero crearemos una VPC que tenga dos subredes públicas y dos privadas. Nos vamos al apartado de VPC y le damos a 'VPC y más'. Le vamos a asignar la ip que se pide en el ejercicio (10.2.0.0/16) y no vamos a poner bloque IPv6. <br>
<img width="1747" height="726" alt="image" src="https://github.com/user-attachments/assets/13789603-2de7-442a-98e0-179752365dc2" /><br>
Configuramos las zonas de disponibilidad<br>
<img width="513" height="359" alt="image" src="https://github.com/user-attachments/assets/177bc2ec-d29a-4b98-93c8-e90ec6f92b06" /><br>
Ponemos 2 subredes públicas y 2 privadas<br>
<img width="522" height="252" alt="image" src="https://github.com/user-attachments/assets/39da4739-fbba-492a-b205-ae1b028bd9c8" /><br>
El NAT lo dejamos igual y en la puerta de enlace marcamos ninguna y creamos<br>
<img width="545" height="691" alt="image" src="https://github.com/user-attachments/assets/4459aed4-cd95-4d98-9a46-2c38cf2d8df6" /><br>
Vemos que esta todo correcto y le damos a ver VPC<br>
<img width="1787" height="693" alt="image" src="https://github.com/user-attachments/assets/d0a7f6df-3864-4e9c-9264-252d2b300718" /><br>
2. Cración de estancias<br>
Ahora lanzamos una instancia, el nombre le pondremos el que queramos en mi caso el que pide la practica y tendra que ser Debian<br>
<img width="1174" height="725" alt="image" src="https://github.com/user-attachments/assets/6cf85521-8ccd-4b68-94a8-f98ffa133b6a" /><br>
En la opciones de VPC marcamos la que hemos creado
<img width="1043" height="329" alt="image" src="https://github.com/user-attachments/assets/671333bf-149a-4f5b-979c-e37de2b8f44f" /><br>
Ahora creamos un grupo de seguridad:Le ponemos un nombre, agregamos una nueva regla de seguridad que sera tipo HTTP para el puerto 80
<img width="1084" height="739" alt="image" src="https://github.com/user-attachments/assets/cf937661-3237-49c6-a1aa-cc6cb315f560" /><br>
Este seria el resumen de la instancia creada<br>
<img width="1615" height="482" alt="image" src="https://github.com/user-attachments/assets/75e63648-60a6-4299-8a6f-959a7a79bf0a" /><br>
3. Instalación de Apache y PHP<br>
Primero hacemos update<br>
