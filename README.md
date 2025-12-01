# SREI
Esto es un repositorio que contiene las actividades de SREI de 2º ASIR
Ejercicios tema 0 | Descripción
---------|----------
Actividad 1 | HTTP Introduction |
¿Quién, dónde y cuándo se crea el primer servidor web? | El primer servidor web fue creado por Tim Berners-Lee en el CERN (Suiza) en el año 1990, usando una computadora NeXT. El software se llamó CERN httpd y el primer sitio web se publicó en 1991.
¿Qué es pila de protocolos usados por http? | La pila de protocolos usada por HTTP está formada por varias capas: en la aplicación se encuentra HTTP, en la capa de transporte TCP, en la red IP, y finalmente la capa física (Ethernet, Wi-Fi, etc.). En conjunto, la comunicación sigue el orden: HTTP → TCP → IP → red física.
¿Componentes de una URL? | Una URL está compuesta por varios elementos: el esquema o protocolo (ejemplo: https), el host o nombre de dominio (ejemplo: www.ejemplo.com), el puerto (opcional, como :8080), la ruta del recurso (ejemplo: /carpeta/pagina.html), los parámetros o query string (ejemplo: ?nombre=juan) y, opcionalmente, un fragmento o ancla (ejemplo: #seccion2).
¿Pasos en la recuperación de una página web mediante HTTP? | Los pasos para recuperar una página web mediante HTTP son: el navegador consulta a un servidor DNS para obtener la dirección IP, establece una conexión TCP con el servidor (puerto 80 para HTTP o 443 para HTTPS), envía una petición HTTP, el servidor procesa la solicitud y devuelve una respuesta HTTP, y finalmente el navegador interpreta el contenido recibido y lo muestra en pantalla.
Diferencia entre páginas dinámicas y estáticas | Las páginas web pueden ser estáticas o dinámicas. Las páginas estáticas tienen un contenido fijo almacenado en archivos HTML y no cambian salvo que se modifique el archivo. En cambio, las páginas dinámicas se generan en tiempo real utilizando lenguajes como PHP, Python o Node.js, y su contenido puede variar según el usuario o la interacción.
¿Cómo usar telnet para acceder a un servidor web? | Telnet se puede usar para acceder manualmente a un servidor web a través del puerto 80. Por ejemplo, con el comando telnet www.ejemplo.com 80. Una vez conectado, se escribe: GET / HTTP/1.1 Host: www.ejemplo.com
Request. Métodos principales | En las peticiones HTTP (request) existen varios métodos principales: GET (solicita un recurso), POST (envía datos al servidor), PUT (crea o actualiza un recurso), DELETE (elimina un recurso), HEAD (igual que GET pero solo devuelve cabeceras) y OPTIONS (muestra los métodos soportados por el servidor).
Response. Códigos | En las respuestas HTTP (response) los códigos se agrupan en varias categorías: 1xx informativos (ejemplo: 100 Continue), 2xx éxito (ejemplo: 200 OK, 201 Created), 3xx redirecciones (ejemplo: 301 Moved Permanently, 302 Found), 4xx errores del cliente (ejemplo: 400 Bad Request, 401 Unauthorized, 403 Forbidden, 404 Not Found) y 5xx errores del servidor (ejemplo: 500 Internal Server Error, 503 Service Unavailable).
Content type. Tipos principales | El encabezado Content-Type indica el tipo de contenido enviado. Los más comunes son: text/html (páginas web), text/plain (texto plano), application/json (datos en JSON), application/xml (XML), image/jpeg o image/png (imágenes), video/mp4 o audio/mpeg (multimedia) y multipart/form-data (formularios con archivos adjuntos).
. | .
Actividad 2 | UDP and TCP: Comparison of Transport Protocols
Diferencias entre udp y tcp? | TCP es un protocolo orientado a la conexión, garantiza la entrega de datos, mantiene el orden correcto de los paquetes y controla flujo y congestión. Es más confiable pero más lento y con mayor sobrecarga. UDP es un protocolo sin conexión, no garantiza entrega ni orden, no tiene control de flujo ni congestión, y sus cabeceras son ligeras. Es más rápido pero menos confiable.
¿Qué aplicaciones usan tcp? | HTTP/HTTPS, SMTP, POP, IMAP, SSH, FTP, Telnet y la mayoría de conexiones a bases de datos.
¿Qué aplicaciones usan udp? | DNS, DHCP, SNMP, VoIP, streaming de audio y video en tiempo real, juegos en línea y protocolos de difusión o multicast.
¿Qué capa almacena el puerto? | El puerto pertenece a la capa de transporte, 
¿Qué capa almacena la dirección IP? | La dirección IP pertenece a la capa de red.
¿Qué es three-way handshake? | El three-way handshake es el proceso de establecimiento de conexión en TCP. Funciona en tres pasos: primero, el cliente envía un segmento SYN al servidor; luego, el servidor responde con un SYN-ACK, reconociendo la petición e indicando su número de secuencia; finalmente, el cliente envía un ACK confirmando la recepción
. | .
Actividad 4 | Busca información sobre el comando curl y muestra al menos cinco ejemplos de uso
 Información | El comando curl (Client for URLs) es una herramienta de línea de comandos que permite transferir datos desde o hacia un servidor mediante URLs. Es muy flexible porque soporta múltiples protocolos como HTTP, HTTPS, FTP, SFTP, SCP, SMTP o LDAP. Con curl se pueden hacer peticiones web, descargar y subir archivos, enviar formularios, trabajar con APIs, manejar autenticación, seguir redirecciones o añadir cabeceras personalizadas. Su sintaxis básica es curl [opciones] URL.
Ejemplo 1 Petición GET simple | curl https://www.ejemplo.com/
Ejemplo 2 Guardar la respuesta en un archivo | curl -o pagina.html https://www.ejemplo.com/
Ejemplo 3 Obtener solo las cabeceras (HEAD request) | curl -I https://www.ejemplo.com/
Ejemplo 4 Enviar datos con POST (formulario o JSON) | curl -d "campo1=valor1&campo2=valor2" https://api.ejemplo.com/recurso
Ejemplo 5 Seguir redirecciones automáticamente | curl -L https://ejemplo.com/redirige
. | .
Actividad 5 | Aqui veremos unos pequeños ejemplo de servidores web
Ejemplo 1-Servidor simple
[Servidor corriendo en consola](Captura_eje1.png) | Aqui vemos el servidor corriendo en consola
[Página en el navegador](ejemplo_1_1.png) | Aqui vemos la página en el navegador 
Ejemplo 2-http server
[Servidor corriendo en consola](ejemplo_2_2.png) | Aqui vemos el servidor corriendo en consola 
[Página en el navegador](ejemplo_2.png) | Aqui vemos la página en el navegador 
Ejemplo 3-dummy web server
[Servidor corriendo en consola](3_1.png) | Aqui vemos el servidor corriendo en consola 
[Página en el navegador](3.png) | Aqui vemos la página en el navegador 

## Ejercicios tema 1
## Actividad 1
- 1 La arquitectura Web es un modelo compuesto de tres capas,¿cuáles son y cuál es  la función de cada una de ellas?

  Capa de presentación (Front-end)Es la parte visible para el usuario, la interfaz gráfica que se muestra en el navegador. Su función es mostrar la información y permitir la interacción con el sistema (formularios, botones, menús, etc.). Tecnologías comunes: HTML, CSS, JavaScript

  Capa de lógica de negocio (Back-end o lógica de aplicación) es el “cerebro” de la aplicación. Su función es procesar las peticiones del usuario, aplicar reglas de negocio, validar datos y decidir qué información enviar o guardar en la base de datos.Se desarrolla con lenguajes como PHP, Python, Java, C#, Node.js, entre otros.

  Capa de datos (Base de datos) es donde se almacena la información de manera estructurada y segura.Su función es guardar, consultar, modificar o eliminar datos según lo que solicite la capa de lógica. Ejemplos: MySQL, PostgreSQL, SQL Server, Oracle.
- 2 Una plataforma web es el entorno de desarrollo de software empleado para  diseñar y ejecutar un sitio web; destacan dos plataformas web, LAMP y WISA. Explica en qué consiste cada una de ellas.

   Una plataforma web es el conjunto de programas y servicios que permiten desarrollar, ejecutar y mantener sitios o aplicaciones web.
Entre las más conocidas destacan LAMP y WISA, que se diferencian principalmente por el sistema operativo y las tecnologías que utilizan.

- 3 Lee el siguiente artículo e instala Apache en Ubuntu<br>
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

- 4 Configuración de apache<br>
      1 Primero comprobamos que apache funcione correctamente y este activado<br>
      <img width="959" height="30" alt="image" src="https://github.com/user-attachments/assets/63fa841f-11d9-474c-86e7-b1d279447402" /><br>
      2 Apache utilizará el puerto 81 además del 80<br>
         2.1 Editamos el archivo de puertos de Apache<br>
         <img width="1087" height="33" alt="image" src="https://github.com/user-attachments/assets/ea07b92d-40f3-4806-a011-0c484b89545a" /><br>
         2.2 Dentro le agregaremos Listen 81 debajo de Listen 80<br>
          <img width="1085" height="675" alt="image" src="https://github.com/user-attachments/assets/dd6c00ae-a1d1-4a33-9f9c-a1dcb07acd90" /><br>
         2.3. Ahora entraremos en el virtualhost para cambiarlo tambien<br>
        <img width="1102" height="69" alt="image" src="https://github.com/user-attachments/assets/a902348b-f2a4-41f1-95bc-f9534fba4361" /><br>
         2.4. La primera linea que nos vendra <VirtualHost *:80> la duplicamos pero poneos 81<br>
         <img width="762" height="528" alt="image" src="https://github.com/user-attachments/assets/e7ecbab1-81c3-45f0-b5ef-bd2d1d191a61" /><br>
         2.5. Reiniciamos Apache para aplicar cambios<br>
        <img width="1061" height="39" alt="image" src="https://github.com/user-attachments/assets/ed64300d-b5ef-43c5-9860-c4e608626cb7" /><br>
         2.6. Por defecto UFW no tiene un perfil para Apache en 81, así que hay que abrirlo manualmente<br>
         <img width="962" height="40" alt="image" src="https://github.com/user-attachments/assets/175c5b2a-0193-47fb-abc6-ed47a87ba3c4" /><br>
         2.7. Confirmamos que este activo<br>
        <img width="890" height="389" alt="image" src="https://github.com/user-attachments/assets/e788356e-f6fc-4889-b9ff-a1b5d17b2dde" /><br>
         2.8. Como podemos comprobar funciona correctamente en el puerto 81<br>
         <img width="722" height="711" alt="image" src="https://github.com/user-attachments/assets/f9e11f7c-627f-4380-9071-da537f950058" /><br>
      3. Añadir el dominio “marisma.intranet” en el fichero “hosts”<br>
         3.1. Primero editamos el archivo host para ello abrimos el archivo host con permisos de superusuario<br>
         <img width="997" height="40" alt="image" src="https://github.com/user-attachments/assets/758e49d4-209f-419a-95b7-077856c00249" /><br>
         3.2 Añadimos al final 127.0.0.1 marisma.intranet y 127.0.0.1 www.marisma.intranet esto hará que cuando pongas http://marisma.intranet en el navegador, apunte a tu propia máquina<br>
         <img width="820" height="382" alt="image" src="https://github.com/user-attachments/assets/168cac5f-d83b-44a4-b0ea-51e36d9a40e3" /><br>
         3.3 Configuramos Apache con Virtualhosts<br>
         <img width="946" height="567" alt="image" src="https://github.com/user-attachments/assets/a055ad01-6f84-4aea-9e23-a44020446421" /><br>
         3.4 Recargamos la configuración para que se aplique<br>
         <img width="1064" height="27" alt="image" src="https://github.com/user-attachments/assets/7c5e9fa7-1b38-4d45-a67c-c8fe6e148fc0" /><br>
         3.5 Co mo podemos ver ya funciona con el dominio<br>
         <img width="715" height="471" alt="image" src="https://github.com/user-attachments/assets/ede8790a-3026-4686-a837-7543c22bcfad" /><br>
      5 Cambia la directiva “ServerTokens” para mostrar el nombre del producto.<br>
         5.1 Editamos el archivo de configuración principal de Apache<br>
		 <img width="1103" height="61" alt="image" src="https://github.com/user-attachments/assets/f498888c-2945-4657-b522-19d6e9c3b3bb" /><br>
         5.2 Busca la línea ServerTokens OS y la cambiamos por ServerTokens Prod<br>
		 <img width="1008" height="605" alt="image" src="https://github.com/user-attachments/assets/ed3d9de4-1bab-4e89-b909-e8baa29e7014" /><br>
         5.3 Reiniciamos Apache para aplicar cambios<br>
		 <img width="1035" height="40" alt="image" src="https://github.com/user-attachments/assets/4ac7b71d-53de-4f22-9dd8-4724b67cf0a0" /><br>
		 5.4 Aqui vemos como ha funcionado<br>
		 <img width="978" height="313" alt="image" src="https://github.com/user-attachments/assets/41484434-e11f-4a5c-838a-f42cc6aa999a" /><br>
		 
- 5 Actividad #3 <br>
	  1 Crea un directorio llamado "dir1" y otro llamado "dir2"<br>
		<img width="609" height="136" alt="image" src="https://github.com/user-attachments/assets/ef0a1122-24f9-46f0-a691-053f364cc3ca" /><br>
      2 Explica qué diferencia existe entre ambos y muestra su equivalencia con la directiva Require.<br>
  Basicamente la diferencia esta en que el el primer comando primero se niega a todos (Deny from all), luego se permiten las IPs que coincidan con Allow y así solo 192.168.1.100 tiene acceso. Y en el segundo primero se permiten las IPs listadas en Allow, pero después se aplican las reglas Deny. En este caso, el efecto final puede ser diferente según el orden, pero generalmente predomina el “Deny” final. Sin embargo, en la práctica, el primer ejemplo (Deny,Allow) es el más común para controlar acceso.<br>
	  <img width="278" height="269" alt="image" src="https://github.com/user-attachments/assets/ea080c42-a85d-4a69-af80-c3856709d1c6" /><br>
	 3 Para dir1<br>
  		3.1 Permite el acceso de las peticiones provenientes de 10.3.0.1007<br>
  		3.2 Permite el acceso desde "marisma.intranet"<br>
		3.3 Permite el acceso desde cualquier subdominio de "marisma.intranet"<br>
  		3.4 Permite el acceso de las peticiones provenientes de "10.3.0.100" con máscara "255.255.0.0"<br>
		Para hacer too esto primero creamos un archivo<br>
		<img width="774" height="52" alt="image" src="https://github.com/user-attachments/assets/f6b2917e-8a33-4837-ab2a-a9eb231583df" /><br>
		Ahora ponemos esta configuración que es lo que nos pide<br>
		<img width="452" height="266" alt="image" src="https://github.com/user-attachments/assets/a09dbda7-73d8-4f26-8e6e-b7cac1655c5f" /><br>
     4 Modifica la configuración de forma que el acceso a dir1:<br>
  		4.1 Se permita a "marisma.intranet" y no se permita desde 10.3.0.101"<br>
		<img width="552" height="284" alt="image" src="https://github.com/user-attachments/assets/ff481f52-01b4-4f42-a799-bc1ac2a1d088" /><br>
	 5 Modifica la configuración de forma que el acceso a dir2:<br>
		5.1 Se permita a "10.3.0.100/8" y no a "marisma.intranet"<br>
 			 Para ello primero creamos el archivo<br>
			 <img width="792" height="64" alt="image" src="https://github.com/user-attachments/assets/d4b271f3-1139-4b59-9603-4e54a191a7cf" /><br>
			 Agregamos lo siguiente<br>
			 <img width="810" height="170" alt="image" src="https://github.com/user-attachments/assets/53da1c9c-3525-4a14-873a-5970a038566c" /><br>
- 6 Actividad #4 <br>
  	Escribe las expresiones regulares para los siguientes supuestos:<br>
		Primero crearemos un archivo txt con nano<br>
		<img width="493" height="439" alt="image" src="https://github.com/user-attachments/assets/8c8110d1-7e7c-492c-b56c-bb61d19bb122" /><br>
		<img width="538" height="438" alt="image" src="https://github.com/user-attachments/assets/49221381-7fce-4761-95a5-acc8c41f6913" /><br>
		Directorios en /www/ cuyo nombre consista en tres dígitos.<br>
		<img width="785" height="83" alt="image" src="https://github.com/user-attachments/assets/6b6eacda-4723-43e1-a952-b6bd078ba711" /><br>
		Ficheros: *.gif, *.jpeg, *.jpg, *.png .+\.(gif | jpe?g | png )<br>
		<img width="776" height="122" alt="image" src="https://github.com/user-attachments/assets/09150087-92cf-4393-bd07-0c534b9e534d" /><br>
		Números enteros y decimales<br>
		<img width="742" height="450" alt="image" src="https://github.com/user-attachments/assets/0f808481-bb18-4747-a52d-8c3c88ebda5b" /><br>
		Números de teléfono en el formato Americano: 123-123-1234<br>
		<img width="784" height="82" alt="image" src="https://github.com/user-attachments/assets/c34b5359-f8dd-4b90-857e-5b462d0c06a3" /><br>
		Palabras<br>
		<img width="769" height="125" alt="image" src="https://github.com/user-attachments/assets/23348011-4b83-4a91-bbc3-dbae9d5f08f2" /><br>
		Códigos hexadecimales de color de 24 o 32 bits<br>
		<img width="788" height="128" alt="image" src="https://github.com/user-attachments/assets/f233b244-1ee5-43da-a952-39bd2cddfa42" /><br>
		Palabras de 4 letras<br>
		<img width="762" height="189" alt="image" src="https://github.com/user-attachments/assets/b1492a8b-eb57-4adb-a6b2-4453c0f588fc" /><br>
		Número entero sin signo<br>7
  		<img width="738" height="249" alt="image" src="https://github.com/user-attachments/assets/b5e74c93-3bda-48ce-b2f0-f514776d1906" /><br>
		Número entero con signo<br>
		<img width="768" height="290" alt="image" src="https://github.com/user-attachments/assets/406a6d9c-8d03-4468-b086-57045898d159" /><br>
		Números reales<br>
		<img width="785" height="475" alt="image" src="https://github.com/user-attachments/assets/33d11f4a-d2ed-4cff-af87-5f65d593f279" /><br>
		Número reales con exponente<br>
		<img width="783" height="350" alt="image" src="https://github.com/user-attachments/assets/3a79ece4-b947-42b2-8abf-74180e723163" /><br>
		Email Y Números del 0 a 255. Estos dos los vamos a hacer en un archivo nano<br>
		<img width="513" height="246" alt="image" src="https://github.com/user-attachments/assets/5c016d53-6ce5-48fa-9d31-e2d6fc7c6f59" /><br>
		Probamos el Email<br>
		<img width="784" height="83" alt="image" src="https://github.com/user-attachments/assets/01416bbf-b79e-4e1b-8b27-8560d86c41e6" /><br>
		Ahora probamos los números del 0 al 255<br>
		<img width="772" height="87" alt="image" src="https://github.com/user-attachments/assets/cc293611-a4b9-44f6-956a-db4a66090936" /><br>
		Escribe una directiva para redireccionar todos los GIF a ficheros JPEG en otro servidor RedirectMatch "(.*)\.gif$" "$1.jpg"<br>
		Para probar la redirección<br>
		<img width="779" height="69" alt="image" src="https://github.com/user-attachments/assets/104fb1b2-8c73-40f2-babd-fafc96e586b8" /><br>7
  		Dentro de VirtualHost ponemos lo siguiente<br>
		<img width="699" height="421" alt="image" src="https://github.com/user-attachments/assets/e0b0fb0e-38f2-4589-8bcb-825e07bab260" /><br>7
  		Reiniciamos Apache<br>
		<img width="748" height="24" alt="image" src="https://github.com/user-attachments/assets/bf0c9557-197d-4259-a87a-b6c431a1988e" /><br>
		
-7 Actividad #5 <br>
	Reescritura<br>
		Editamos el archivo de configuración<br>
		<img width="468" height="316" alt="image" src="https://github.com/user-attachments/assets/756006bf-ef4e-4a34-a1d2-ccbcca2f090b" /><br>
		Creamos el archivo  /var/www/html/operacion.php<br>
		<img width="747" height="36" alt="image" src="https://github.com/user-attachments/assets/e9a711a3-f14f-4e73-b486-83e93595f1a6" /><br>
		Pegamos lo siguiente<br>
		<img width="718" height="446" alt="image" src="https://github.com/user-attachments/assets/343374db-8e9b-4091-ac16-cb358f7cd6cd" /><br>
		<img width="673" height="452" alt="image" src="https://github.com/user-attachments/assets/4d95e92c-8235-4eb3-9cf5-c93cd750a445" /><br>
		Reiniciamos<br>
		<img width="736" height="26" alt="image" src="https://github.com/user-attachments/assets/5843a265-954a-4b2a-a4df-79dd6b637aba" /><br>
		Y en el navegador ponemos esto y nos debería dar el resultado<br>
		<img width="401" height="102" alt="image" src="https://github.com/user-attachments/assets/cc2ff66e-0e3d-4a1b-81d4-edc91dd52835" /><br>
-8 Actividad #6<br>
	Creamos la estructura del directorio<br>
	<img width="730" height="64" alt="image" src="https://github.com/user-attachments/assets/01c6f9b7-d359-41d9-9404-452a2c99e340" /><br>
	Le damos permisos<br>
	<img width="552" height="91" alt="image" src="https://github.com/user-attachments/assets/66685f6f-b1e7-4e76-b0c1-20f97bdacdb3" /><br>
	Nos aseguramos que el permiso de lectura pueda ser aplicado a archivos<br>
	<img width="546" height="45" alt="image" src="https://github.com/user-attachments/assets/fdfcb099-5b5e-4819-9d8d-abc8f13dbb49" /><br>
	Creamos una pagina de prueba para cada VirtualHost, primero con ejemplo.com<br>
	<img width="542" height="243" alt="image" src="https://github.com/user-attachments/assets/0dc73642-8442-49c5-bb9a-93e0bde3dcfc" /><br>
	Ahora el de prueba.com<br>
	<img width="547" height="226" alt="image" src="https://github.com/user-attachments/assets/02f7a5c4-02f7-4d0c-b289-dd2f07e79216" /><br>
	Creamo nuevos archivos VirtualHost, primero con ejemplo.com<br>
	<img width="520" height="157" alt="image" src="https://github.com/user-attachments/assets/7425feb4-72ab-4c2c-9c64-92f84435e421" /><br>
	Ahora con prueba.com<br>
	<img width="486" height="195" alt="image" src="https://github.com/user-attachments/assets/d1d36092-3f72-4abc-9a15-f5d52a5c2195" /><br>
	Habilitamos los nuevos archivos VirtualHost<br>
	<img width="540" height="68" alt="image" src="https://github.com/user-attachments/assets/b419da7d-1851-4b13-b000-102f6926e9e4" /><br>
	
-9 Actividad #7: Autenticación<br>
	Creamos el primer usuario<br>
	<img width="574" height="110" alt="image" src="https://github.com/user-attachments/assets/d3fcdafb-0ca0-4eee-bca4-d3050ef0dc04" /><br>
	Los demas usuarios de la misma forma pero sin poner -c<br>
	<img width="559" height="419" alt="image" src="https://github.com/user-attachments/assets/937e0523-898c-4082-837b-15bce2bce215" /><br>
	Creamos el archivo para definir los grupos<br>
	<img width="572" height="52" alt="image" src="https://github.com/user-attachments/assets/ca4336d5-8d35-4327-abb8-2131d7525dac" /><br>
	Definimos los grupos dentro del archivo en el que en el grupo uno estara el usuario 1 y 2 y en el grupo 2 estará e resto<br>
	<img width="411" height="88" alt="image" src="https://github.com/user-attachments/assets/7d36517a-9c56-4606-9d82-f002c51bad44" /><br>
	Creamos los directorios de privado<br>
	<img width="750" height="51" alt="image" src="https://github.com/user-attachments/assets/b418c401-ae69-4de8-8324-ad59f4ad2a20" /><br>
	Ahora vamos a aplicar las reglas para ello editamos el archivo de configuración:<br>
	<img width="759" height="46" alt="image" src="https://github.com/user-attachments/assets/ea8a0f62-604d-4136-8cb1-daf8240b30d1" /><br>
	Aqui ponemos que en el privado1 tenga acceso todos los usuarios y en privado2 permita el acceso sólo a los usuarios del grupo1.<br>
	<img width="595" height="422" alt="image" src="https://github.com/user-attachments/assets/29458767-92f0-471b-988c-a07aa586babf" /><br>
	Deberemo0s de activar los distintos modulos<br>
	<img width="730" height="334" alt="image" src="https://github.com/user-attachments/assets/35110545-9ef1-4838-a53e-c6b9beb2457c" /><br>
	Ahora hacemos una prueba en el privado1<br>
	<img width="496" height="325" alt="image" src="https://github.com/user-attachments/assets/3a83f0f0-4e0f-4108-8c2c-d34be613eecb" /><br>
	Vemos que nos deja entrar con cualquiera<br>
	<img width="696" height="115" alt="image" src="https://github.com/user-attachments/assets/6bb1ffc7-0d74-426b-8dc4-87ef97b59146" /><br>
	Ahora en privado 2<br>
	<img width="636" height="337" alt="image" src="https://github.com/user-attachments/assets/9bc5a1c3-74d3-48ef-b393-155b679ec09f" /><br>
	Aqui vemos que no se puede entrar con usuario 3 y te vuelve a pedir crednciales<br>
	<img width="606" height="337" alt="image" src="https://github.com/user-attachments/assets/590edf5f-fc4e-4b00-ac79-c7543acc385a" /><br>
	Ahora vamos con el satisfy Any, que lo que hace es que entres sin contraseña para ello editamos el archivo donde tenemos el privado2<br>
	<img width="587" height="356" alt="image" src="https://github.com/user-attachments/assets/eff70339-ec22-43ce-8f47-e98fa7386f48" /><br>
	Ahora con satisfy All<br>
	<img width="498" height="260" alt="image" src="https://github.com/user-attachments/assets/b323bdc9-45ff-4032-a72b-aaf2c2a88e3b" /><br>
- 10 Actividad #8
  	Activamos el modulo Digest<br>
	<img width="705" height="130" alt="image" src="https://github.com/user-attachments/assets/871df680-6211-4cc0-af73-9b80baf36952" /><br>
	Creamos los directorios<br>
	<img width="758" height="86" alt="image" src="https://github.com/user-attachments/assets/55a3f44b-4f12-46e5-8753-fe1b81b4c8a4" /><br>
	Creamos los usuarios y dominios<br>
	<img width="752" height="337" alt="image" src="https://github.com/user-attachments/assets/00ae9ba7-d6b7-4a7f-a8ee-402389e2134c" /><br>
	Nos vamos a ApacheAl.conf para editarlo y poner lo siguiente<br>
	<img width="655" height="367" alt="image" src="https://github.com/user-attachments/assets/92a23ba5-35d4-4239-bdd3-8b879cffb6cb" /><br>

- 11 Actividad #10<br>
	En AWS instalamos una maquina ubuntu para instalar apache pero primero hacemos un update<br>
	<img width="1121" height="566" alt="image" src="https://github.com/user-attachments/assets/6d741eaf-fa8b-44e4-8865-5ab487a4e837" /><br>
	Ahora instalamos apache<br>
<img width="706" height="157" alt="image" src="https://github.com/user-attachments/assets/3c689f3e-acb3-4f5a-8451-bb80822b9cee" /><br>
Activamos el modulo SSL<br>
<img width="1022" height="211" alt="image" src="https://github.com/user-attachments/assets/1e2b61f3-fec7-488d-882b-0d60599627c3" /><br>
Reiniciamos apache<br>
<img width="712" height="123" alt="image" src="https://github.com/user-attachments/assets/3cd0140c-39ed-4712-abc5-73edc7ed5a75" /><br>
Ahora generamos el certificado y la clave para ello ponemos lo siguiente<br>
<img width="1708" height="109" alt="image" src="https://github.com/user-attachments/assets/8ac99e6c-b6ad-4a7f-b1ee-9cf404ea6ab5" /><br>
Ahora tenemos que en los archivos de configuracion decir donde tenemos los archivos nuevos<br>
<img width="842" height="19" alt="image" src="https://github.com/user-attachments/assets/07d52d90-b2c6-466d-88fd-8d4d3e926d70" /><br>
Modificamos estas dos lineas para dar la ubicación correcta<br>
<img width="812" height="743" alt="image" src="https://github.com/user-attachments/assets/71de3cc4-d8c6-45c1-a753-d5c40680d8eb" /><br>
Activamos SSL y reiniciamos<br>
<img width="880" height="107" alt="image" src="https://github.com/user-attachments/assets/57a83c9e-7a99-4bf7-8ea2-f41dd97782a0" /><br>
Entramos en el navegador ponemos https://(nuestra ip publica y vemos que no es segura nuestra web<br>
<img width="1423" height="675" alt="image" src="https://github.com/user-attachments/assets/2a1c3f83-de7f-44ad-9f61-febfb36ec0bf" /><br>
Para que nuestra web sea segura vamos a esta otra web y nos registraremos<br>
<img width="1907" height="965" alt="image" src="https://github.com/user-attachments/assets/385fbebc-cd9d-4c3b-89b0-fb5ad40100b8" /><br>
Una vez registrado entraremos donde pone Nombres de host DNS dinamicos<br>
<img width="1911" height="820" alt="image" src="https://github.com/user-attachments/assets/503fe207-3bbf-4b9f-947b-87ed890f5ff9" /><br>
Ahora le damos a crear nombre de host<br>
<img width="888" height="360" alt="image" src="https://github.com/user-attachments/assets/62e27cbb-a188-43dc-8f97-627517e5498c" /><br>
En host pondremos el nombre de la maquina nuestra ip publica y le damos a crear<br>
<img width="1466" height="404" alt="image" src="https://github.com/user-attachments/assets/fa531075-1654-4f21-b7e9-d3740bab9454" /><br>
Ya se habrá creado<br>
<img width="1256" height="211" alt="image" src="https://github.com/user-attachments/assets/21ce05f8-e029-4118-8fbc-a256b2370ebb" /><br>
Ahora instalamos cerbtbot pero antes hacemos update<br>
<img width="473" height="34" alt="image" src="https://github.com/user-attachments/assets/36ded2aa-3f78-4aab-a8d1-d0c7ed734ba0" /><br>
<img width="798" height="26" alt="image" src="https://github.com/user-attachments/assets/7b616108-d377-4bf2-ad44-1d48c0aacd42" /><br>
Validamos nuestro dominio<br>
<img width="512" height="36" alt="image" src="https://github.com/user-attachments/assets/d4a137fe-27b8-40e5-b063-7831ad2e7975" /><br>
Aqui vemos que se ha creado correctamente<br>
<img width="1487" height="1023" alt="image" src="https://github.com/user-attachments/assets/1b46e0aa-2f25-4e9c-b519-4801f417ebf8" /><br>



Practica_Primer_Trimestre.pdf
