## SSL
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
