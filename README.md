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
- 1. La arquitectura Web es un modelo compuesto de tres capas,¿cuáles son y cuál es  la función de cada una de ellas?

  Capa de presentación (Front-end)Es la parte visible para el usuario, la interfaz gráfica que se muestra en el navegador. Su función es mostrar la información y permitir la interacción con el sistema (formularios, botones, menús, etc.). Tecnologías comunes: HTML, CSS, JavaScript

  Capa de lógica de negocio (Back-end o lógica de aplicación) es el “cerebro” de la aplicación. Su función es procesar las peticiones del usuario, aplicar reglas de negocio, validar datos y decidir qué información enviar o guardar en la base de datos.Se desarrolla con lenguajes como PHP, Python, Java, C#, Node.js, entre otros.

  Capa de datos (Base de datos) es donde se almacena la información de manera estructurada y segura.Su función es guardar, consultar, modificar o eliminar datos según lo que solicite la capa de lógica. Ejemplos: MySQL, PostgreSQL, SQL Server, Oracle.
- 2. Una plataforma web es el entorno de desarrollo de software empleado para  diseñar y ejecutar un sitio web; destacan dos plataformas web, LAMP y WISA. Explica en qué consiste cada una de ellas.

   Una plataforma web es el conjunto de programas y servicios que permiten desarrollar, ejecutar y mantener sitios o aplicaciones web.
Entre las más conocidas destacan LAMP y WISA, que se diferencian principalmente por el sistema operativo y las tecnologías que utilizan.

- 3. Lee el siguiente artículo e instala Apache en Ubuntu
     1. Para actualizar el índice de paquetes disponibles en los repositorios configurados en tu sistema.<br>
        <img width="347" height="43" alt="image" src="https://github.com/user-attachments/assets/a42a2d4c-9ce4-4caa-9ecf-d37b5b6b4aa3" /><br>
     2. Ahora lo instalamos con sudo apt install apache2<br>
        <img width="397" height="21" alt="image" src="https://github.com/user-attachments/assets/aed5cad1-a63e-4be3-a5c8-4a6ce3a7ba74" /><br>
     4. Para ajustar la configuración del firewall usamos UFW para ver los diferentes perfiles usamos un comando<br>
        <img width="330" height="105" alt="image" src="https://github.com/user-attachments/assets/52b76984-5743-48a4-9b1f-455b7b6b67cc" /><br>
     5. Para permitir tráfico únicamente en el puerto 80 utilizamos el perfil Apache<br>
        <img width="398" height="61" alt="image" src="https://github.com/user-attachments/assets/5f46e6e6-4166-487e-9058-418a054b6b0f" /><br>
     6. Instalamos MySQL<br>
        <img width="422" height="26" alt="image" src="https://github.com/user-attachments/assets/52ac1ac9-2894-4e09-8283-0a7155ef3d4e" /><br>
     7. Con esta secuencia de comandos se eliminarán algunos ajustes predeterminados poco seguros y se bloqueará el acceso a su sistema de base de datos<br>
        <img width="458" height="21" alt="image" src="https://github.com/user-attachments/assets/8eefd1d9-36c5-4aac-98f0-3f76b55a2649" /><br>
     8. Despues nos indicara que pongamos yes or no y pondremos (y) aparte  se le solicitará que seleccione un nivel de validación de contraseña ponemos 1<br>
        <img width="621" height="188" alt="image" src="https://github.com/user-attachments/assets/c400d235-934d-44c4-957f-2139f14e4334" /><br>
     9. Ahora procedemos a instalar PHP<br>
        <img width="617" height="25" alt="image" src="https://github.com/user-attachments/assets/2219315a-3a89-4fde-82f7-9c8e49974f7d" /><br>
     10. Una vez que la instalación se complete, podrá ejecutar el siguiente comando para confirmar su versión de PHP<br>
        <img width="265" height="31" alt="image" src="https://github.com/user-attachments/assets/1aa5854b-e1be-45e3-818a-7f3aef4db758" /><br>
     11. Creamos un host virtual para ello primero creamos el directorio para your_domain de la siguiente manera
         <img width="441" height="24" alt="image" src="https://github.com/user-attachments/assets/2a13d357-d3e2-480b-8925-7f33401e8878" />  
     12. A continuación, asigne la propiedad del directorio con la variable de entorno $USER, que hará referencia a su usuario de sistema actual
         <img width="408" height="23" alt="image" src="https://github.com/user-attachments/assets/a16328d9-5bbc-4fd5-ac17-39c9f4fc9c0d" />
     13. Luego, abra un nuevo archivo de configuración en el directorio sites-available de Apache usando el editor de línea de comandos que prefiera. En este caso, utilizaremos nano
        <img width="599" height="17" alt="image" src="https://github.com/user-attachments/assets/ea49cb61-a7e9-43ef-a27b-a713021c8f63" />
     14. De esta manera, se creará un nuevo archivo en blanco. Ponemos la siguiente configuración básica
        <img width="481" height="179" alt="image" src="https://github.com/user-attachments/assets/b0218e57-97b1-434e-8fd1-02894783d479" />
      15. Ahora, puede usar a2ensite para habilitar el nuevo host virtual
        <img width="370" height="20" alt="image" src="https://github.com/user-attachments/assets/fdeb0173-c5f6-4a86-847b-666faa433f02" />
      16. Puede ser conveniente deshabilitar el sitio web predeterminado que viene instalado con Apache.
          <img width="432" height="22" alt="image" src="https://github.com/user-attachments/assets/db75e357-0160-4b5f-b19a-d6aaef740800" />
      18. Para asegurarse de que su archivo de configuración no contenga errores de sintaxis, ejecute lo siguiente
          <img width="421" height="29" alt="image" src="https://github.com/user-attachments/assets/0ff30301-50c9-48e5-89c3-d8e2ad54b8fc" />
      20. Por último, volvemos a cargar Apache para que estos cambios surtan efecto
          <img width="446" height="23" alt="image" src="https://github.com/user-attachments/assets/10eeb13b-8c1c-45eb-ab46-68040059b4bc" />
      22. Como nuestro sitio web esta vacio creamos un index.html
          <img width="477" height="21" alt="image" src="https://github.com/user-attachments/assets/f47a8823-130c-4f4a-b78f-26633c6efe22" />
      24. Incluimos el siguiente contenido
          <img width="509" height="75" alt="image" src="https://github.com/user-attachments/assets/aa78fd6a-86bd-481c-acad-9e36c4705ae9" />
      25. 
      26. 
 

          
          
    
          
