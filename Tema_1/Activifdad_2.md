Configuración de apache<br>
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
