Fase 1: Preparación del Entorno y LAMP<br>
Lo primero es instalar el stack básico (Linux, Apache, MariaDB, PHP) y el soporte para Python.<br>
   1. Para ello vamos ejecutanto los siguientes comandos:<br>
      - Primero hacemos un update<br>
      <img width="686" height="237" alt="image" src="https://github.com/user-attachments/assets/2779dc20-c104-4fd5-86d2-2e27ed16c48d" /><br>
      - Ahora instalamos todo lo necesario que es:<br>
         - Infraestructura Base y Web<br>
              •	apache2: Es el servidor HTTP. Es el motor que se encarga de recibir las peticiones de los navegadores y servir las páginas web.<br>
              •	php: Es el lenguaje de programación de lado del servidor. Permite que las webs no sean solo texto estático, sino que puedan procesar datos (como formularios o inicios de sesión).<br>
              •	libapache2-mod-php: Es el módulo conector. Permite que el servidor Apache "entienda" y ejecute el código PHP. Sin esto, Apache simplemente mostraría el código fuente de la web en lugar de ejecutarlo.<br>
              - El codigo seria el siguiente<br>
       <img width="1201" height="25" alt="image" src="https://github.com/user-attachments/assets/76ff6065-c5cd-45aa-865b-d7cc993c1196" /><br>
      - Cuando instalamos todo nos salta la configuración de phpmyadmin, primero seleccionamos apache2<br>
      <img width="1023" height="318" alt="image" src="https://github.com/user-attachments/assets/05b7bcff-7c27-4b06-abec-223a0b5841c5" /><br>
      - Ahora decimos que si<br>
        <img width="1193" height="298" alt="image" src="https://github.com/user-attachments/assets/efebdb6f-4d96-446d-9789-c73615038412" /><br>
      - Ponemos una contraseña que la mía sera 123456 y la confirmamos<br>
      <img width="1186" height="212" alt="image" src="https://github.com/user-attachments/assets/05fe4842-611e-444e-be2b-889cd176346e" /><br>
      - 

   2. Para que todo funcione tenemos que habilitar los siguientes modulos <br>
      -	userdir: Permite que http://ip/~usuario funcione.<br>
      -	rewrite: Para URLs amigables.<br>
      -	ssl: Para conexiones seguras.<br>
      <img width="798" height="184" alt="image" src="https://github.com/user-attachments/assets/c6ef6c1a-92ad-4a77-8a28-3399b76b672f" /><br>
      -  Ahora como nos pide ahí, hay que hacer un restart para aplicar la configuración<br>
      <img width="451" height="51" alt="image" src="https://github.com/user-attachments/assets/7b66e2ba-cade-4b95-832f-087afa7027e1" /><br>
   






