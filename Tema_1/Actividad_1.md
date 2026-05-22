## INSTALACIÓN DE APACHE EN UBUNTU
1 Para actualizar el índice de paquetes disponibles en los repositorios configurados en tu sistema.<br>
<img width="347" height="43" alt="image" src="https://github.com/user-attachments/assets/a42a2d4c-9ce4-4caa-9ecf-d37b5b6b4aa3" /><br>
2 Ahora lo instalamos con sudo apt install apache2<br>
<img width="397" height="21" alt="image" src="https://github.com/user-attachments/assets/aed5cad1-a63e-4be3-a5c8-4a6ce3a7ba74" /><br>
4 Para ajustar la configuración del firewall usamos UFW para ver los diferentes perfiles usamos un comando<br>
<img width="330" height="105" alt="image" src="https://github.com/user-attachments/assets/52b76984-5743-48a4-9b1f-455b7b6b67cc" /><br>
5 Para permitir tráfico únicamente en el puerto 80 utilizamos el perfil Apache<br>
<img width="398" height="61" alt="image" src="https://github.com/user-attachments/assets/5f46e6e6-4166-487e-9058-418a054b6b0f" /><br>
6 Instalamos MySQL<br>
<img width="422" height="26" alt="image" src="https://github.com/user-attachments/assets/52ac1ac9-2894-4e09-8283-0a7155ef3d4e" /><br>
7 Con esta secuencia de comandos se eliminarán algunos ajustes predeterminados poco seguros y se bloqueará el acceso a su sistema de base de datos<br>
<img width="458" height="21" alt="image" src="https://github.com/user-attachments/assets/8eefd1d9-36c5-4aac-98f0-3f76b55a2649" /><br>
8 Despues nos indicara que pongamos yes or no y pondremos (y) aparte  se le solicitará que seleccione un nivel de validación de contraseña ponemos 1<br>
<img width="621" height="188" alt="image" src="https://github.com/user-attachments/assets/c400d235-934d-44c4-957f-2139f14e4334" /><br>
9 Ahora procedemos a instalar PHP<br>
<img width="617" height="25" alt="image" src="https://github.com/user-attachments/assets/2219315a-3a89-4fde-82f7-9c8e49974f7d" /><br>
10 Una vez que la instalación se complete, podrá ejecutar el siguiente comando para confirmar su versión de PHP<br>
<img width="265" height="31" alt="image" src="https://github.com/user-attachments/assets/1aa5854b-e1be-45e3-818a-7f3aef4db758" /><br>
11 Creamos un host virtual para ello primero creamos el directorio para your_domain de la siguiente manera<br>
<img width="407" height="36" alt="image" src="https://github.com/user-attachments/assets/e0b21f61-de42-4d95-9566-03e41fb3e154" /><br>
12 A continuación, asigne la propiedad del directorio con la variable de entorno $USER, que hará referencia a su usuario de sistema actual<br>
<img width="648" height="42" alt="image" src="https://github.com/user-attachments/assets/2fe67e8d-f3c5-4e6e-97e3-7178718793d3" /><br>
13 Luego, abra un nuevo archivo de configuración en el directorio sites-available de Apache usando el editor de línea de comandos que prefiera. En este caso, utilizaremos nano<br>
<img width="741" height="32" alt="image" src="https://github.com/user-attachments/assets/f74534ee-16d7-4782-b390-12721a8058f0" /> <br>
14 De esta manera, se creará un nuevo archivo en blanco. Ponemos la siguiente configuración básica<br>
<img width="694" height="243" alt="image" src="https://github.com/user-attachments/assets/7f8fec6a-0e97-4f30-9718-1dfb1b70ba08" /><br>
15 Ahora, puede usar a2ensite para habilitar el nuevo host virtual<br>
<img width="329" height="30" alt="image" src="https://github.com/user-attachments/assets/539aa85b-ed95-4fc8-8d99-84490c65985c" /> <br>
16 Puede ser conveniente deshabilitar el sitio web predeterminado que viene instalado con Apache.<br>
<img width="432" height="22" alt="image" src="https://github.com/user-attachments/assets/db75e357-0160-4b5f-b19a-d6aaef740800" /><br>
18 Para asegurarse de que su archivo de configuración no contenga errores de sintaxis, ejecute lo siguiente<br>
<img width="421" height="29" alt="image" src="https://github.com/user-attachments/assets/0ff30301-50c9-48e5-89c3-d8e2ad54b8fc" /><br>
20 Por último, volvemos a cargar Apache para que estos cambios surtan efecto<br>
<img width="446" height="23" alt="image" src="https://github.com/user-attachments/assets/10eeb13b-8c1c-45eb-ab46-68040059b4bc" /><br>
22 Como nuestro sitio web esta vacio creamos un index.html<br>
<img width="491" height="49" alt="image" src="https://github.com/user-attachments/assets/ac8df88d-5f52-4ecc-b9da-7d30603c284d" /><br>
24 Incluimos el siguiente contenido<br>
<img width="810" height="141" alt="image" src="https://github.com/user-attachments/assets/f020070b-f82e-46be-b1b0-34ed842dabb7" /><br>
25 Para cambiar el comportamiento, deberemos editar el archivo /etc/apache2/mods-enabled/dir.conf<br>
<img width="609" height="45" alt="image" src="https://github.com/user-attachments/assets/4ccc8a10-1ceb-4396-8eaf-176d86a65fa8" /><br>
26  Modificamos el orden en el que el archivo index.php se ponga el primero<br>
<img width="609" height="45" alt="image" src="https://github.com/user-attachments/assets/2c319603-4eb5-45d1-8eff-114f3a294de4" /><br>
27 Después de guardar y cerrar el archivo, deberá volver a cargar Apache para que los cambios surtan efecto<br>
<img width="414" height="52" alt="image" src="https://github.com/user-attachments/assets/027a570a-01a7-46f9-a368-39212c49e7b6" /><br>
28  Ahora que dispone de una ubicación personalizada para alojar los archivos y las carpetas de su sitio web, crearemos una secuencia de comandos PHP para ello creamos un archivo nuevo llamado info.php<br>
<img width="422" height="38" alt="image" src="https://github.com/user-attachments/assets/2015ee16-fba0-4802-adbf-48597246841a" /><br>
29 Con el siguiente codigo se abrirá un archivo vacío<br>
<img width="177" height="71" alt="image" src="https://github.com/user-attachments/assets/7e9d1242-49de-4083-9acb-6544a5a6160b" /><br>
