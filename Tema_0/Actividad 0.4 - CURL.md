## Busca información sobre el comando curl y muestra al menos cinco ejemplos de uso
El comando curl (Client for URLs) es una herramienta de línea de comandos que permite transferir datos desde o hacia un servidor mediante URLs. Es muy flexible porque soporta múltiples protocolos como HTTP, HTTPS, FTP, SFTP, SCP, SMTP o LDAP. Con curl se pueden hacer peticiones web, descargar y subir archivos, enviar formularios, trabajar con APIs, manejar autenticación, seguir redirecciones o añadir cabeceras personalizadas. Su sintaxis básica es
```
curl [opciones] URL.
```
Ejemplos de uso
```
1. Petición GET simple:	curl https://www.ejemplo.com/
2. Guardar la respuesta en un archivo	curl -o pagina.html https://www.ejemplo.com/
3. Obtener solo las cabeceras (HEAD request)	curl -I https://www.ejemplo.com/
4. Enviar datos con POST (formulario o JSON)	curl -d "campo1=valor1&campo2=valor2" https://api.ejemplo.com/recurso
5. Seguir redirecciones automáticamente	curl -L https://ejemplo.com/redirige
```
