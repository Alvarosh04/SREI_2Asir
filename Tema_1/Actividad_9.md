## Autenticación
Creamos el primer usuario<br>
<img width="574" height="110" alt="image" src="https://github.com/user-attachments/assets/d3fcdafb-0ca0-4eee-bca4-d3050ef0dc04" /><br>
Los demas usuarios de la misma forma pero sin poner -c<br>
<img width="559" height="419" alt="image" src="https://github.com/user-attachments/assets/937e0523-898c-4082-837b-15bce2bce215" /><br>
Creamos el archivo para definir los grupos<br>
<img width="572" height="52" alt="image" src="https://github.com/user-attachments/assets/ca4336d5-8d35-4327-abb8-2131d7525dac" /><br>
Definimos los grupos dentro del archivo en el que en el grupo uno estara el usuario 1 y 2 y en el grupo 2 estará e resto<br>
<img width="411" height="88" alt="image" src="https://github.com/user-attachments/assets/7d36517a-9c56-4606-9d82-f002c51bad44" /><br>
Creamos los directorios de privado<br>
<img width="750" height="51" alt="image" src="https://github.com/user-attachments/assets/b418c401-ae69-4de8-8324-ad59f4ad2a20" /><br>
Ahora vamos a aplicar las reglas para ello editamos el archivo de configuración:<br>
<img width="759" height="46" alt="image" src="https://github.com/user-attachments/assets/ea8a0f62-604d-4136-8cb1-daf8240b30d1" /><br>
Aqui ponemos que en el privado1 tenga acceso todos los usuarios y en privado2 permita el acceso sólo a los usuarios del grupo1.<br>
<img width="595" height="422" alt="image" src="https://github.com/user-attachments/assets/29458767-92f0-471b-988c-a07aa586babf" /><br>
Deberemo0s de activar los distintos modulos<br>
<img width="730" height="334" alt="image" src="https://github.com/user-attachments/assets/35110545-9ef1-4838-a53e-c6b9beb2457c" /><br>
Ahora hacemos una prueba en el privado1<br>
<img width="496" height="325" alt="image" src="https://github.com/user-attachments/assets/3a83f0f0-4e0f-4108-8c2c-d34be613eecb" /><br>
Vemos que nos deja entrar con cualquiera<br>
<img width="696" height="115" alt="image" src="https://github.com/user-attachments/assets/6bb1ffc7-0d74-426b-8dc4-87ef97b59146" /><br>
Ahora en privado 2<br>
<img width="636" height="337" alt="image" src="https://github.com/user-attachments/assets/9bc5a1c3-74d3-48ef-b393-155b679ec09f" /><br>
Aqui vemos que no se puede entrar con usuario 3 y te vuelve a pedir crednciales<br>
<img width="606" height="337" alt="image" src="https://github.com/user-attachments/assets/590edf5f-fc4e-4b00-ac79-c7543acc385a" /><br>
Ahora vamos con el satisfy Any, que lo que hace es que entres sin contraseña para ello editamos el archivo donde tenemos el privado2<br>
<img width="587" height="356" alt="image" src="https://github.com/user-attachments/assets/eff70339-ec22-43ce-8f47-e98fa7386f48" /><br>
Ahora con satisfy All<br>
<img width="498" height="260" alt="image" src="https://github.com/user-attachments/assets/b323bdc9-45ff-4032-a72b-aaf2c2a88e3b" /><br>
