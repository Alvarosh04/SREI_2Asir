## DOCKER
# Conceptos básicos sobre Docker
Docker es una plataforma de contenedorización que permite empaquetar una aplicación junto con todas sus dependencias (librerías, configuración, sistema base) en una unidad portátil y reproducible. Si funciona en tu máquina, funciona en cualquier otra.El flujo siempre sigue esta secuencia:
```
1. Dockerfile — archivo de texto con instrucciones para construir el entorno.
2. Imagen — plantilla inmutable generada al ejecutar docker build.
3. Contenedor — instancia en ejecución de una imagen, creada con docker run.
4.Volumen — mecanismo para persistir datos fuera del ciclo de vida del contenedor.
```
Pilares técnicos del aislamiento:
```
Namespaces — cada contenedor tiene su propio sistema de archivos, red y PID. El proceso "cree" que es una máquina completa.
cgroups — limitan los recursos que puede consumir un contenedor (CPU, RAM, disco).
Union filesystem — las capas de imagen se comparten entre contenedores, ahorrando espacio en disco.
```
# Imágenes vs. Contenedores
La distinción más importante en Docker es entre imagen y contenedor. Una imagen es una plantilla estática de solo lectura; un contenedor es esa imagen "viva", en ejecución.
Imagen:
```
- Solo lectura — no cambia una vez construida.
- Una imagen puede originar N contenedores idénticos.
- Construida en capas reutilizables entre imágenes (ahorra espacio).
- Se publica en Docker Hub o en registros privados.
```
Contenedor:
```
- Es la imagen "viva" con su propio estado y ciclo de vida.
- Añade una capa de escritura sobre la imagen de solo lectura.
- Efímero por defecto — los datos se pierden al eliminarlo (sin volumen).
- Configurable: puertos, variables de entorno, redes, límites de recursos.
```

# Volúmenes de almacenamiento
Los contenedores son efímeros por diseño. Al eliminarlos, su capa de escritura desaparece con ellos. Los volúmenes resuelven este problema sacando los datos fuera del ciclo de vida del contenedor.
Son como "discos duros externos" virtuales que se conectan al contenedor.
