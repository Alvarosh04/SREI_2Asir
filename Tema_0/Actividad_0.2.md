## Diferencias entre udp y tcp?
TCP es un protocolo orientado a la conexión, garantiza la entrega de datos, mantiene el orden correcto de los paquetes y controla flujo y congestión. Es más confiable pero más lento y con mayor sobrecarga. UDP es un protocolo sin conexión, no garantiza entrega ni orden, no tiene control de flujo ni congestión, y sus cabeceras son ligeras. Es más rápido pero menos confiable.
## ¿Qué aplicaciones usan tcp?
HTTP/HTTPS, SMTP, POP, IMAP, SSH, FTP, Telnet y la mayoría de conexiones a bases de datos.
## ¿Qué aplicaciones usan udp?
DNS, DHCP, SNMP, VoIP, streaming de audio y video en tiempo real, juegos en línea y protocolos de difusión o multicast.
## ¿Qué capa almacena el puerto?
El puerto pertenece a la capa de transporte
## ¿Qué capa almacena la dirección IP?
La dirección IP pertenece a la capa de red
## ¿Qué es three-way handshake?
El three-way handshake es el proceso de establecimiento de conexión en TCP. Funciona en tres pasos: primero, el cliente envía un segmento SYN al servidor; luego, el servidor responde con un SYN-ACK, reconociendo la petición e indicando su número de secuencia; finalmente, el cliente envía un ACK confirmando la recepción
