- Primero le decimos a BIND que existen dos zonas nuevas: la directa (nombres a IPs) y la inversa (IPs a nombres). Para ello editamos el archivo local y ponemos lo siguiente:<br>
<img width="811" height="355" alt="image" src="https://github.com/user-attachments/assets/134107a7-cd69-424b-afb6-efbc5b828910" /><bt>
- Ahora creamos el archivo de zona directa<br>
<img width="810" height="453" alt="image" src="https://github.com/user-attachments/assets/b8b88579-e62d-4f94-b6a3-1af9e13b99b5" /><br>
- Ahora creamos el de zona inversa<br>
<img width="774" height="338" alt="image" src="https://github.com/user-attachments/assets/8071ffbb-f059-45b5-9200-dd798259fdbd" /><br>
- Verificamos la sintaxis y reiniciamos<br>
<img width="449" height="76" alt="image" src="https://github.com/user-attachments/assets/a1ea0897-3a16-4606-a0fb-afd0bf80f687" /><br>
- Esta es la comprobación de logs<br>
<img width="163" height="90" alt="image" src="https://github.com/user-attachments/assets/e6853649-6a4f-48fd-a551-c043f3e08e12" /><br>
- Ahora vamos a configurar al cliente, para ello debemos comprobar si la maquina o ordenador use este DNS por defecto. Esto se mira en el archivo de configuración y hay que asegurarse de que la línea nameserver apunte a mi IP o a localhost, y añadimos el dominio de búsqueda:<br>
<img width="708" height="361" alt="image" src="https://github.com/user-attachments/assets/cebe171b-91f8-4b0c-87e8-4c0cc21c48c8" /><br>
- Primera comprobación la del registro A (Web y FTP): Vemos que responde bien<br> 
<img width="1079" height="646" alt="image" src="https://github.com/user-attachments/assets/e879ab54-ca31-45db-bc12-262caea51ac3" /><br>
- Segunda comprobación, los registros NS. También responde bien<br>
<img width="566" height="376" alt="image" src="https://github.com/user-attachments/assets/ad79d48d-d5f2-48ee-8ae7-d6084ab19bd0" /><br>
- Tercera comprobación, los registros MX. Vemos que responde bien<br>
<img width="606" height="427" alt="image" src="https://github.com/user-attachments/assets/365afa07-a971-42b7-a15a-741936c838c1" /><br>
- Cuarta comprobación, los registros SOA<br>
<img width="1096" height="357" alt="image" src="https://github.com/user-attachments/assets/85a3fbf0-ecd3-407d-bae3-2d2be8aeca05" /><br>
- Quinta comprobación, la resolución inversa, que también responde bien<br>
<img width="638" height="367" alt="image" src="https://github.com/user-attachments/assets/4326a0d2-ba85-4c97-8b01-251ee895c060" /><br>
