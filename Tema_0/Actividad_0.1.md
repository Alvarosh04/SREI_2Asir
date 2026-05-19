## ¿Quién, dónde y cuándo se crea el primer servidor web?	
El primer servidor web fue creado por Tim Berners-Lee en el CERN (Suiza) en el año 1990, usando una computadora NeXT. El software se llamó CERN httpd y el primer sitio web se publicó en 1991.
## ¿Qué es pila de protocolos usados por http?	
La pila de protocolos usada por HTTP está formada por varias capas: en la aplicación se encuentra HTTP, en la capa de transporte TCP, en la red IP, y finalmente la capa física (Ethernet, Wi-Fi, etc.). En conjunto, la comunicación sigue el orden: HTTP → TCP → IP → red física.
## ¿Componentes de una URL?
``` 
1. Protocolo / esquema: por ejemplo http, https (el mecanismo de transferencia)
2. Host / dominio: por ejemplo www.ejemplo.com
3. Puerto (opcional, si no es el estándar): por ejemplo :80, :443
4. Ruta (path): indica la ubicación del recurso en el servidor, por ejemplo /carpeta/pagina.html
5. Consulta / query string (opcional): parte después de ?, para parámetros, ej: ?id=123&orden=asc
6. Fragmento (opcional): después de #, para referirse a una sección dentro del recurso, ej: #seccion2
```
## ¿Pasos en la recuperación de una página web mediante HTTP?
Los pasos para recuperar una página web mediante HTTP son:
```
1. El navegador consulta a un servidor DNS para obtener la dirección IP
2. Establece una conexión TCP con el servidor (puerto 80 para HTTP o 443 para HTTPS)
3. Envía una petición HTTP
4. El servidor procesa la solicitud y devuelve una respuesta HTTP
5. Finalmente el navegador interpreta el contenido recibido y lo muestra en pantalla.
```
## Diferencia entre páginas dinámicas y estáticas
```
Las páginas estáticas tienen un contenido fijo almacenado en archivos HTML y no cambian salvo que se modifique el archivo.
Las páginas dinámicas se generan en tiempo real utilizando lenguajes como PHP, Python o Node.js, y su contenido puede variar según el usuario o la interacción.
```
## Request. Métodos principales
En las peticiones HTTP (request) existen varios métodos principales:
```
GET: solicita un recurso.
POST: envía datos al servidor.
PUT: crea o actualiza un recurso.
DELETE: elimina un recurso.
HEAD: igual que GET pero solo devuelve cabeceras.
OPTIONS: muestra los métodos soportados por el servidor.
```
## Response. Códigos
```
1xx: Informativos (ejemplo: 100 Continue)
2xx: Éxito (ejemplo: 200 OK, 201 Created)
3xx: Redirecciones (ejemplo: 301 Moved Permanently, 302 Found)
4xx: Errores del cliente (ejemplo: 400 Bad Request, 401 Unauthorized, 403 Forbidden, 404 Not Found)
5xx: Errores del servidor (ejemplo: 500 Internal Server Error, 503 Service Unavailable).
```
## Content type. Tipos principales
El encabezado Content-Type indica el tipo de contenido enviado. Los más comunes son:
```
text/html → páginas web
text/plain → texto plano
text/css → hojas de estilo CSS
application/javascript o text/javascript → scripts JS
application/json → datos en formato JSON
image/jpeg, image/png, image/gif → imágenes
application/xml → XML (aunque cada vez menos usado excepto APIs antiguas)
```
