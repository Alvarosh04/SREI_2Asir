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
      - Ahora instalamos Fel servidor FTP<br>
      <img width="602" height="124" alt="image" src="https://github.com/user-attachments/assets/fff426da-0da8-4682-9ade-b2a788b4aec8" /><br>
      - Creamos la "llave" de seguridad<br>
      <img width="1226" height="365" alt="image" src="https://github.com/user-attachments/assets/8291e999-fe27-41d1-9349-00baa5ee632d" /><br>
      - Ahora vamos al archivo de configuracion de vsftpd para configurar el cifrado<br>
      <img width="914" height="726" alt="image" src="https://github.com/user-attachments/assets/d656ba7c-1ad9-437b-8c29-f7b7a60e1408" /><br>
      - Descargamos filezilla en el cliente para comprobar<br>
      <img width="768" height="481" alt="image" src="https://github.com/user-attachments/assets/851df737-33ba-4feb-9076-970345add5f6" /><br>
      - Entramos en filezilla y entramos en Gestor de sitios<br>
      <img width="1143" height="730" alt="image" src="https://github.com/user-attachments/assets/6b0eba6e-1d8d-4a7a-b036-edcebf526292" /><br>
      - Creamos un nuevo sitio con la IP de la web<br>
      <img width="1202" height="721" alt="image" src="https://github.com/user-attachments/assets/7aa4db7b-df73-43f5-b319-c7ad1a7f4063" /><br>
      - Le damos a conectar y sale esto de certificado desconocido, que no pasa nada esta bien hecho eso demuestra que el servidor está enviando el certificado TLS correctamente, le damos a "Confiar siempre en este certificado"<br>
      <img width="627" height="681" alt="image" src="https://github.com/user-attachments/assets/414522b9-ee81-4e43-9761-d3299cbc8874" /><br>
      - Ahora vamos a pasar el archivo txt para ver que se puede<br>
      <img width="798" height="426" alt="image" src="https://github.com/user-attachments/assets/110cdb73-912f-4ccc-bb62-e6a7c5bafb30" /><br>
      - Aqui sale el mensaje que se ha pasado correctamente<br>
      <img width="1143" height="732" alt="image" src="https://github.com/user-attachments/assets/d7320976-db6d-46f0-9031-308776e0d781" /><br>
      - Ahora vamos aa instalar phpmyadmin para que el cliente pepe gestione su base de datos de forma visual desde el navegador.<br>
      <img width="741" height="325" alt="image" src="https://github.com/user-attachments/assets/8c7b0635-2689-45e6-80cb-6833b1c9092b" /><br>







      
      
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
         - En la prueba desde el cliente en un ubuntu Desktop, primero entramos en la configuración host para decirle donde encontrar el servidor<br>
         <img width="766" height="273" alt="image" src="https://github.com/user-attachments/assets/77c4b7a4-31ce-4981-8cba-16ad3dc36b03" /><br>
         - Entramos en el navegador ponemos el nombre de nuestra pagina<br>
         <img width="552" height="562" alt="image" src="https://github.com/user-attachments/assets/e009e438-b8ef-4cb5-bdd9-ef13e598b181" /><br>
    B. Script de Web: crear_vhost.sh<br>
         - Este script configura el alojamiento, la página por defecto y activa PHP y Python y se encarga de que, al entrar en esa dirección, Apache sepa qué archivos mostrar.<br>
<img width="1219" height="726" alt="image" src="https://github.com/user-attachments/assets/17208819-0cc0-4f11-b597-bb2db1774123" /><br>
<img width="1100" height="711" alt="image" src="https://github.com/user-attachments/assets/385d94f8-06a3-465f-8258-42264554c8c0" /><br>
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
         <img width="617" height="240" alt="image" src="https://github.com/user-attachments/assets/d3ea2b36-ab2c-4045-b6cb-db93bc851b45" /><br>
         - Desde el desktop intentamos conectar a la carpeta de pepe mediante sftp y vemos que deja perfectamente<br>
         <img width="1218" height="688" alt="image" src="https://github.com/user-attachments/assets/3426231e-7bd2-4a99-bd65-3e6c86ab7cc7" /><br>
    D. Script Integrador: alta_cliente.sh<br>
         - En este Script se automatiza todo el proceso incluyendo los otros script dentro de este<br>
         <img width="760" height="545" alt="image" src="https://github.com/user-attachments/assets/01fbf1b9-1453-43ba-86f1-23c443fbb1dc" /><br>
         - Aqui esta que se ha creado correctamente<br>
         <img width="711" height="212" alt="image" src="https://github.com/user-attachments/assets/af5d39c0-661f-4ff2-9c90-c25bc1d300e6" /><br>
         - Hacemos comprobaciones desde el cliente, la primera si da ping<br>
         <img width="767" height="177" alt="image" src="https://github.com/user-attachments/assets/2a038bbf-625a-4794-bcd4-2c6baf37c785" /><br>
         - Desde el navegador podemos entrar<br>
         <img width="790" height="583" alt="image" src="https://github.com/user-attachments/assets/efceea64-6d7c-4658-a2e3-ff808a34e7c7" /><br>
         - Si le damos a verificar php info vemos que tambien funciona<br>
         <img width="1225" height="767" alt="image" src="https://github.com/user-attachments/assets/a26d6565-fef8-4f84-834d-bfb9cbe0fc5a" /><br>
         - He creado un txt en el escritorio en local y lo he pasado a la web para comprobar de que da permisos correctamente<br>
         <img width="1139" height="494" alt="image" src="https://github.com/user-attachments/assets/90bf6bae-efcc-43a4-9edc-02dc5bb978ea" /><br>
         <img width="929" height="495" alt="image" src="https://github.com/user-attachments/assets/544e6e37-5ef6-4ded-82b0-5a24046b2544" /><br>
         
      











      








