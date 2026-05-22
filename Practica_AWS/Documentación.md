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
Instalamos apache2<br>
<img width="1405" height="599" alt="image" src="https://github.com/user-attachments/assets/63ffcf42-7033-487f-b9e9-8b5fa03e7f7b" /><br>
Lo iniciamos y vamos al navegador para comprobar que esta activo<br>
<img width="1367" height="726" alt="image" src="https://github.com/user-attachments/assets/27f1c93d-1492-42ba-a591-0f3ec6603c86" /><br>
Instalamos php<br>
<img width="2256" height="666" alt="image" src="https://github.com/user-attachments/assets/5aa24544-20e6-49eb-b80f-0fdc1a90b3ae" /><br>
Creamos la base de datos<br>
<img width="1398" height="483" alt="image" src="https://github.com/user-attachments/assets/6d12c0ec-23ea-4ca3-b953-46b0202d3b6c" /><br>
Le damos un nombre y esta sera la configuración:<br>
<img width="1336" height="442" alt="image" src="https://github.com/user-attachments/assets/a71ca876-205b-4dfa-9630-7a73c115d231" /><br>
En conectividad nos aseguramos de poner la VPC que hemos creado para esta práctica:<br>
<img width="1378" height="381" alt="image" src="https://github.com/user-attachments/assets/0b55dbf0-cd24-4737-b19f-629be1cbe3ab" /><br>
<img width="1379" height="439" alt="image" src="https://github.com/user-attachments/assets/14ccbce6-ea0f-44f6-88d8-670f55d42182" />br>
Le damos a crear. Una vez creada la base de datos,vamos a establecer la conexión con la instancia con el asistente que RDS nos proporciona. Establecerá los permisos necesarios en los grupos de seguridad de la instancia y la BD sin mayor complicación.<br>
<img width="573" height="300" alt="image" src="https://github.com/user-attachments/assets/b11c1279-eb82-4c93-a767-1bf66425f7fd" /><br>
Le damos a conectar y listo esperamos a que se conecte<br>
Nos vamos al apartado de EFS para crear el sistema de almacenamiento externo que vamos a conectar a la instancia y que más tarde conectaremos a wordpress.<br>
<img width="1074" height="684" alt="image" src="https://github.com/user-attachments/assets/3eef96a7-f9b1-4ca2-9e52-a5c0710442b5" /><br>
Ahora en la seguridad  vamos a editar el grupo de seguridad para permitir el acceso de la instancia al EFS.<br>
<img width="1367" height="326" alt="image" src="https://github.com/user-attachments/assets/e92e58bd-3c6a-4760-b817-ee7cf444edf4" /><br>
Usamos la opcion DNS en asociar<br>
<img width="1070" height="399" alt="image" src="https://github.com/user-attachments/assets/fe50533b-fbd8-4d34-9bdb-d51618f50514" /><br>
Lo montamos mediante SSH:<br>
<img width="1379" height="103" alt="image" src="https://github.com/user-attachments/assets/156a29c1-85f7-4968-b2ec-b91a4157b611" /><br>
Aquí la comprobación:<br>
<img width="1388" height="413" alt="image" src="https://github.com/user-attachments/assets/fcf10b93-dc8a-4699-aa1f-14002f72752c" /><br>
Dentro de /var/www/html descargamos wordpress:<br>
<img width="1394" height="431" alt="image" src="https://github.com/user-attachments/assets/14593681-4f3e-46df-a947-5062ae3ea24b" /><br>
Lo descomprimimos:<br>
<img width="1195" height="299" alt="image" src="https://github.com/user-attachments/assets/58a0bc00-863c-4058-8ed1-b195ac904221" /><br>
Descargamos el cliente de mysql:<br>
<img width="1403" height="457" alt="image" src="https://github.com/user-attachments/assets/fd9d33d9-4f6f-47b9-840e-30e112e7c269" /><br>
Creamos la base de datos, el usuario y la contraseña<br>
<img width="1361" height="494" alt="image" src="https://github.com/user-attachments/assets/06b0ef43-0b4e-41b9-9209-1978f1644434" /><br>
Vamos al navegador para comprobar y vemos que esta bien<br>
<img width="1306" height="738" alt="image" src="https://github.com/user-attachments/assets/ecc3b521-2a6e-43cd-9128-6691e37900c4" /><br>
Lo isntalamos y vemos que se conecta perfectamente<br>
<img width="1253" height="586" alt="image" src="https://github.com/user-attachments/assets/37a32344-0f9c-45b4-a53a-735667d6bd33" /><br>

