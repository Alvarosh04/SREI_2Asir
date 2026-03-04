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
      
   2. Para que todo funcione tenemos que habilitar los siguientes modulos <br>
     - El comando a2enmod significa Apache2 Enable Module.<br>
     <img width="495" height="149" alt="image" src="https://github.com/user-attachments/assets/638ce44d-926f-4386-a238-464099a9b6ee" /><br>
     • cgi (Common Gateway Interface): Es un protocolo estándar que permite a Apache interactuar con programas externos. Se usa principalmente para ejecutar scripts antiguos o programas escritos en C++ o Perl que generan contenido web dinámico. Aunque es "clásico", es fundamental para la compatibilidad con herramientas de administración de sistemas.<br>
     • rewrite: Es uno de los módulos más importantes. Permite reescribir URLs al vuelo.<br>
     • wsgi (Web Server Gateway Interface): Este es el módulo específico para Python. Actúa como un puente de alta velocidad entre el servidor web Apache y las aplicaciones creadas con frameworks modernos como Django o Flask. Sin este módulo, Apache vería un archivo de Python como simple texto en lugar de ejecutarlo como una aplicación web.<br>

   3. Ahora vamos a empezar con los script<br>
    - He creado cuatro archivos en el servidor. El cuarto es el que une todo para que, con un solo comando, se cree el cliente completo.<br>
       A. Script de DNS: crear_dns.sh<br>
         - Este script automatiza la resolución directa e inversa<br>






