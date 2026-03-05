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
         - Este script automatiza la resolución directa e inversa y se encarga de que el nombre (www.ejemplo.marisma.local) existiera<br>
<img width="719" height="484" alt="image" src="https://github.com/user-attachments/assets/f4c81e0a-b8bd-4e19-aa77-edff623c7668" /><br>
         - Se le da permisos de ejecución y aquí esta la comprobación<br>
<img width="531" height="63" alt="image" src="https://github.com/user-attachments/assets/7dbf56aa-0271-4b57-9751-6852c34407a3" /><br>
       B. Script de Web: crear_vhost.sh<br>
         - Este script configura el alojamiento, la página por defecto y activa PHP y Python y se encarga de que, al entrar en esa dirección, Apache sepa qué archivos mostrar.<br>
<img width="1219" height="726" alt="image" src="https://github.com/user-attachments/assets/17208819-0cc0-4f11-b597-bb2db1774123" /><br>
<img width="1264" height="715" alt="image" src="https://github.com/user-attachments/assets/3b100b8b-fbb8-4a5c-bce0-a8e9a40fbfaa" /><br>
<img width="558" height="204" alt="image" src="https://github.com/user-attachments/assets/29e667cc-1933-45bb-be03-6967594c0ec3" /><br>
         - Aquí esta la comprobación de que se crea correctamente<br>
           <img width="582" height="121" alt="image" src="https://github.com/user-attachments/assets/b60cf6a7-cfb2-47a3-90d6-e5fc39c5f8f6" /><br>
         - Con el comando curl http://localhost para que salga el HTML puro<br>
           <img width="1214" height="739" alt="image" src="https://github.com/user-attachments/assets/f6adc394-35c7-44a6-b3e3-bcd98f2f2c54" /><br>
           - También se han creado los archivos correctos<br>
           <img width="459" height="85" alt="image" src="https://github.com/user-attachments/assets/ea830ef1-d717-4dfb-9657-6d2bf526262d" /><br>
      C. Script de Usuario y SQL:<br>
         -Este Script crea el usuario para FTP/SSH y la base de datos con todos los permisos y con este paso, se permite que cada sitio tenga su propio espacio para guardar datos y su propio acceso de administración.<br>
         <img width="821" height="602" alt="image" src="https://github.com/user-attachments/assets/c8ef7399-df78-4fb4-9132-c700a4a5d442" /><br>
         - Esta es la comprobación de que se crea correctamente<br>
         <img width="591" height="72" alt="image" src="https://github.com/user-attachments/assets/83fc8201-7a92-43ea-ae3a-4d59861aa700" /><br>
         - Aqui vemos que ha creado y pone pepe pepe en vez de root root<br>
         <img width="475" height="111" alt="image" src="https://github.com/user-attachments/assets/81507c90-32f6-4871-b7d2-e23463ebb79c" /><br>
         - Aqui vemos que se ha creado correctamente la base de datos<br>
         <img width="1229" height="377" alt="image" src="https://github.com/user-attachments/assets/a9bcb867-718c-41bc-b0d9-0249d84a200e" /><br>
         - Ahora comprobamos que se pueden introducir datos con el usuario pepe<br>




      








