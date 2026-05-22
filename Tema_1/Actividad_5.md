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
