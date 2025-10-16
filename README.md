# Herramientas para crear y servir codelabs

Los codelabs son tutoriales interactivos educativos que se pueden crear en Google Docs usando algunas convenciones de formato simples. También puedes crear codelabs usando sintaxis Markdown. Este repositorio contiene todas las herramientas y documentación que necesitas para construir y publicar tus propios codelabs.

Si estás interesado en crear codelabs, crea un documento siguiendo la [Guía de Formato de Codelabs](FORMAT-GUIDE.md) y consulta el directorio [claat](claat) para una descripción detallada de la herramienta de línea de comandos `claat`.

También considera unirte al [grupo de Google codelab-authors](https://groups.google.com/forum/#!forum/codelab-authors), que te conecta con otros autores y proporciona actualizaciones sobre nuevas versiones.

## ¿Qué es esto?

Durante más de 3 años, el proyecto CLaaT (Codelabs as a Thing) ha dado a desarrolladores de todo el mundo una experiencia práctica con productos y herramientas de Google. Hemos acumulado más de 500 codelabs de alta calidad, servido millones de visitantes web y apoyado más de 100 eventos, desde reuniones locales hasta Google I/O.

Este proyecto ha sido implementado como un proyecto voluntario por un pequeño grupo de Googlers dedicados que se preocupan profundamente por este enfoque de "aprender haciendo" para la educación.

## ¿Qué hace especial a esta herramienta?

* Flujo de creación potente y flexible a través de Google Docs
* Soporte opcional para crear en texto Markdown
* Capacidad de producir tutoriales web o markdown interactivos sin escribir código
* Vista previa interactiva fácil
* Monitoreo de uso a través de Google Analytics
* Soporte para múltiples entornos objetivo (kiosco, web, markdown, offline, etc.)
* Soporte para uso anónimo - ideal para computadoras públicas en eventos de desarrolladores
* Se ve genial, con una implementación web responsiva
* Recuerda dónde se quedó el estudiante al regresar a un codelab
* Experiencia de usuario amigable para móviles

## ¿Puedo usar esto para crear mis propios codelabs y servir mis codelabs en línea?

Sí, la herramienta claat y el mecanismo de servicio pueden ser usados por cualquiera para crear sus propios codelabs y servir sus propios codelabs en la web.

También puedes usar esta herramienta para crear una página de resumen atractiva como la que ves en el [sitio oficial de Google Codelabs](https://g.co/codelabs).

Si estás interesado en crear codelabs, únete al [grupo codelab-authors](https://groups.google.com/forum/#!forum/codelab-authors), que te conecta con otros autores y proporciona acceso a la [Guía de Formato de Codelabs](FORMAT-GUIDE.md).

## ¿Cómo lo uso?

Consulta este [excelente tutorial](https://medium.com/@zarinlo/publish-technical-tutorials-in-google-codelab-format-b07ef76972cd).

### Configuración del proyecto

1. **Prerrequisitos**
- Node.js y npm instalados
- Go instalado (para claat)
- Navegador web moderno

2. **Instalación**
```bash
# Clonar el repositorio
git clone https://github.com/googlecodelabs/tools.git
cd tools

# Instalar dependencias
npm install

# Construir claat
cd claat
go build
```

3. **Crear un documento** siguiendo las convenciones de sintaxis descritas en la [Guía de Formato de Codelabs](FORMAT-GUIDE.md). Aquí hay un [documento de ejemplo](https://docs.google.com/document/d/1E6XMcdTexh5O8JwGy42SY3Ehzi8gOfUGiqTiUX6N04o/). Siéntete libre de copiar ese documento como plantilla inicial. Una vez que tengas tu propio documento fuente, anota su DocId, que es la cadena larga cerca del final de la URL (justo después de docs.google.com/document/d/).

4. **Hacer cambios y previsualizar** tu codelab, usando la aplicación de vista previa proporcionada por Google. Para previsualizar un codelab, instala la [extensión de Chrome Preview Codelab](https://chrome.google.com/webstore/detail/preview-codelab/lhojjnijnkiglhkggagbapfonpdlinji) en tu navegador. Ahora puedes previsualizar un codelab directamente desde la vista de Google Doc haciendo clic en el botón de la extensión de Chrome, que abrirá una nueva pestaña para mostrar la vista previa. Alternativamente, navega manualmente a https://codelabs-preview.appspot.com/?file_id=<google-doc-id>

5. **Instalar el comando claat** -- consulta el [README en el directorio claat](https://github.com/googlecodelabs/tools/blob/master/claat/README.md) de este repo para instrucciones.

6. **Ejecutar el comando claat** para transformar el contenido del documento en uno de los formatos de salida soportados. Los formatos soportados por defecto son html y markdown, pero la herramienta claat soporta agregar formatos adicionales especificando una ruta a una plantilla Go. Por ejemplo, usando el documento de ejemplo anterior:

```
cd site/codelabs/
claat export 1rpHleSSeY-MJZ8JvncvYA8CFqlnlcrW8-a4uEaqizPY  
ok      your-first-pwapp
```

También puedes especificar un documento markdown (archivo .md) como entrada. Debe adherirse a las convenciones de sintaxis descritas [aquí](https://github.com/googlecodelabs/tools/tree/master/claat/parser/md)

```
cd site/codelabs/
claat export document.md
ok      your-md-based-codelab
```
7. **Ejecutar el comando gulp serve**.
```
cd site/codelabs/# Herramientas para crear y servir codelabs

Los codelabs son tutoriales interactivos educativos que se pueden crear en Google Docs usando algunas convenciones de formato simples. También puedes crear codelabs usando sintaxis Markdown. Este repositorio contiene todas las herramientas y documentación que necesitas para construir y publicar tus propios codelabs.

Si estás interesado en crear codelabs, crea un documento siguiendo la [Guía de Formato de Codelabs](FORMAT-GUIDE.md) y consulta el directorio [claat](claat) para una descripción detallada de la herramienta de línea de comandos `claat`.

También considera unirte al [grupo de Google codelab-authors](https://groups.google.com/forum/#!forum/codelab-authors), que te conecta con otros autores y proporciona actualizaciones sobre nuevas versiones.

## ¿Qué es esto?

Durante más de 3 años, el proyecto CLaaT (Codelabs as a Thing) ha dado a desarrolladores de todo el mundo una experiencia práctica con productos y herramientas de Google. Hemos acumulado más de 500 codelabs de alta calidad, servido millones de visitantes web y apoyado más de 100 eventos, desde reuniones locales hasta Google I/O.

Este proyecto ha sido implementado como un proyecto voluntario por un pequeño grupo de Googlers dedicados que se preocupan profundamente por este enfoque de "aprender haciendo" para la educación.

## ¿Qué hace especial a esta herramienta?

* Flujo de creación potente y flexible a través de Google Docs
* Soporte opcional para crear en texto Markdown
* Capacidad de producir tutoriales web o markdown interactivos sin escribir código
* Vista previa interactiva fácil
* Monitoreo de uso a través de Google Analytics
* Soporte para múltiples entornos objetivo (kiosco, web, markdown, offline, etc.)
* Soporte para uso anónimo - ideal para computadoras públicas en eventos de desarrolladores
* Se ve genial, con una implementación web responsiva
* Recuerda dónde se quedó el estudiante al regresar a un codelab
* Experiencia de usuario amigable para móviles

## ¿Puedo usar esto para crear mis propios codelabs y servir mis codelabs en línea?

Sí, la herramienta claat y el mecanismo de servicio pueden ser usados por cualquiera para crear sus propios codelabs y servir sus propios codelabs en la web.

También puedes usar esta herramienta para crear una página de resumen atractiva como la que ves en el [sitio oficial de Google Codelabs](https://g.co/codelabs).

Si estás interesado en crear codelabs, únete al [grupo codelab-authors](https://groups.google.com/forum/#!forum/codelab-authors), que te conecta con otros autores y proporciona acceso a la [Guía de Formato de Codelabs](FORMAT-GUIDE.md).

## ¿Cómo lo uso?

Consulta este [excelente tutorial](https://medium.com/@zarinlo/publish-technical-tutorials-in-google-codelab-format-b07ef76972cd).

### Configuración del proyecto

1. **Prerrequisitos**
- Node.js y npm instalados
- Go instalado (para claat)
- Navegador web moderno

2. **Instalación**
```bash
# Clonar el repositorio
git clone https://github.com/googlecodelabs/tools.git
cd tools

# Instalar dependencias
npm install

# Construir claat
cd claat
go build
```

3. **Crear un documento** siguiendo las convenciones de sintaxis descritas en la [Guía de Formato de Codelabs](FORMAT-GUIDE.md). Aquí hay un [documento de ejemplo](https://docs.google.com/document/d/1E6XMcdTexh5O8JwGy42SY3Ehzi8gOfUGiqTiUX6N04o/). Siéntete libre de copiar ese documento como plantilla inicial. Una vez que tengas tu propio documento fuente, anota su DocId, que es la cadena larga cerca del final de la URL (justo después de docs.google.com/document/d/).

4. **Hacer cambios y previsualizar** tu codelab, usando la aplicación de vista previa proporcionada por Google. Para previsualizar un codelab, instala la [extensión de Chrome Preview Codelab](https://chrome.google.com/webstore/detail/preview-codelab/lhojjnijnkiglhkggagbapfonpdlinji) en tu navegador. Ahora puedes previsualizar un codelab directamente desde la vista de Google Doc haciendo clic en el botón de la extensión de Chrome, que abrirá una nueva pestaña para mostrar la vista previa. Alternativamente, navega manualmente a https://codelabs-preview.appspot.com/?file_id=<google-doc-id>

5. **Instalar el comando claat** -- consulta el [README en el directorio claat](https://github.com/googlecodelabs/tools/blob/master/claat/README.md) de este repo para instrucciones.

6. **Ejecutar el comando claat** para transformar el contenido del documento en uno de los formatos de salida soportados. Los formatos soportados por defecto son html y markdown, pero la herramienta claat soporta agregar formatos adicionales especificando una ruta a una plantilla Go. Por ejemplo, usando el documento de ejemplo anterior:

```
cd site/codelabs/
claat export 1rpHleSSeY-MJZ8JvncvYA8CFqlnlcrW8-a4uEaqizPY  
ok      your-first-pwapp
```

También puedes especificar un documento markdown (archivo .md) como entrada. Debe adherirse a las convenciones de sintaxis descritas [aquí](https://github.com/googlecodelabs/tools/tree/master/claat/parser/md)

```
cd site/codelabs/
claat export document.md
ok      your-md-based-codelab
```
7. **Ejecutar el comando gulp serve**.
```
cd site/codelabs/
gulp serve --codelabs-dir=codelabs
```



Esto iniciará un servidor web local y abrirá una pestaña del navegador al servidor local. Haz clic en el hipervínculo que representa tu codelab de interés para experimentar una versión completamente renderizada.

## Comandos de construcción disponibles

Desde el directorio raíz del proyecto:

```bash
# Limpiar archivos de construcción
npm run clean

# Construir todos los elementos
npm run build

# Ejecutar pruebas
npm run test

# Publicar a npm (solo para mantenedores)
npm run pub
```

## ¿Cómo genero mi propia página de inicio?

Consulta las instrucciones en el [readme del directorio site](site/README.md).

## ¿Cómo genero una vista personalizada?

Copia la [vista de muestra](site/app/views/vslive), personalízala a tu gusto, etiqueta y reconstruye los codelabs que quieres incluir, y luego genera tu vista.

## ¿Cómo publico mis codelabs?

La salida generada por `claat` es un conjunto puramente estático de código HTML o Markdown. Como tal, puede ser servido por cualquier mecanismo de servicio web, incluyendo cualquiera de las siguientes opciones:

* Github Pages (`*.github.io`)
* [Google App Engine](https://cloud.google.com/appengine)
* [Firebase Static Serving](https://firebase.google.com/products/hosting)
* [Google Cloud Storage](https://cloud.google.com/storage)
* Amazon Web Services S3
* Netlify
* Cualquier servidor web de código abierto (Nginx, Apache)
* `python -m SimpleHTTPServer` (Python 2)
* `python3 -m http.server` (Python 3)

Simplemente confirma los artefactos generados por el comando claat en tu vehículo de servicio preferido y deberías estar listo para comenzar.

El [directorio site](site) contiene herramientas para construir tus propias páginas de inicio personalizadas y publicar tanto páginas de inicio como codelabs en Google Cloud Storage.

## Formatos de entrada soportados

* Google Docs (siguiendo las convenciones de formato de FORMAT-GUIDE.md)
* Markdown

## Formatos de salida soportados

* Google Codelabs - HTML y Markdown
* Qwiklabs - Markdown
* Cloud Shell Tutorials - Markdown con directivas especiales
* Jupyter, Kaggle Kernels, Colaboratory, etc. - Markdown con celdas específicas del formato

No hay un "mejor" formato de publicación único. Cada formato tiene sus propias ventajas, desventajas, comunidad y dominio de aplicación. Por ejemplo, Jupyter tiene un seguimiento muy fuerte en las comunidades de ciencia de datos y Python.

Esta variedad de formatos es saludable porque estamos viendo nuevos enfoques innovadores todo el tiempo (por ejemplo, consulta observablehq.com, que recientemente lanzó su versión Beta).

Mientras que este ecosistema de formatos en evolución es generalmente algo bueno, tener que mantener tutoriales en múltiples formatos, o cambiar de un formato a otro puede ser doloroso. El formato de documento de Codelabs (como se especifica en FORMAT-GUIDE.md) puede proporcionar una especificación de alto nivel para mantener una única fuente de verdad, traducida programáticamente a uno o más formatos específicos de tutorial.

## Contribuciones

¡Sí, por supuesto! ¿Tienes ideas de características? Envíanos un pull request o reporta un error.

Antes de contribuir:
- Lee nuestro [CONTRIBUTING.md](CONTRIBUTING.md)
- Firma el [Acuerdo de Licencia de Contribuidor Individual de Google](https://cla.developers.google.com/about/google-individual)
- Todas las contribuciones requieren revisión de código a través de pull requests de GitHub

## Estructura del proyecto

```
├── claat/                  # Herramienta CLI principal para generar codelabs
├── codelab-elements/       # Elementos web personalizados para codelabs
├── site/                   # Herramientas para generar sitios web de codelabs
├── sample/                 # Ejemplos de codelabs
├── FORMAT-GUIDE.md         # Guía completa de formato
└── CONTRIBUTING.md         # Guía de contribución
```

## Ejemplos
# Herramientas para crear y servir codelabs

Los codelabs son tutoriales interactivos educativos que se pueden crear en Google Docs usando algunas convenciones de formato simples. También puedes crear codelabs usando sintaxis Markdown. Este repositorio contiene todas las herramientas y documentación que necesitas para construir y publicar tus propios codelabs.

Si estás interesado en crear codelabs, crea un documento siguiendo la [Guía de Formato de Codelabs](FORMAT-GUIDE.md) y consulta el directorio [claat](claat) para una descripción detallada de la herramienta de línea de comandos `claat`.

También considera unirte al [grupo de Google codelab-authors](https://groups.google.com/forum/#!forum/codelab-authors), que te conecta con otros autores y proporciona actualizaciones sobre nuevas versiones.

## ¿Qué es esto?

Durante más de 3 años, el proyecto CLaaT (Codelabs as a Thing) ha dado a desarrolladores de todo el mundo una experiencia práctica con productos y herramientas de Google. Hemos acumulado más de 500 codelabs de alta calidad, servido millones de visitantes web y apoyado más de 100 eventos, desde reuniones locales hasta Google I/O.

Este proyecto ha sido implementado como un proyecto voluntario por un pequeño grupo de Googlers dedicados que se preocupan profundamente por este enfoque de "aprender haciendo" para la educación.

## ¿Qué hace especial a esta herramienta?

* Flujo de creación potente y flexible a través de Google Docs
* Soporte opcional para crear en texto Markdown
* Capacidad de producir tutoriales web o markdown interactivos sin escribir código
* Vista previa interactiva fácil
* Monitoreo de uso a través de Google Analytics
* Soporte para múltiples entornos objetivo (kiosco, web, markdown, offline, etc.)
* Soporte para uso anónimo - ideal para computadoras públicas en eventos de desarrolladores
* Se ve genial, con una implementación web responsiva
* Recuerda dónde se quedó el estudiante al regresar a un codelab
* Experiencia de usuario amigable para móviles

## ¿Puedo usar esto para crear mis propios codelabs y servir mis codelabs en línea?

Sí, la herramienta claat y el mecanismo de servicio pueden ser usados por cualquiera para crear sus propios codelabs y servir sus propios codelabs en la web.

También puedes usar esta herramienta para crear una página de resumen atractiva como la que ves en el [sitio oficial de Google Codelabs](https://g.co/codelabs).

Si estás interesado en crear codelabs, únete al [grupo codelab-authors](https://groups.google.com/forum/#!forum/codelab-authors), que te conecta con otros autores y proporciona acceso a la [Guía de Formato de Codelabs](FORMAT-GUIDE.md).

## ¿Cómo lo uso?

Consulta este [excelente tutorial](https://medium.com/@zarinlo/publish-technical-tutorials-in-google-codelab-format-b07ef76972cd).

### Configuración del proyecto

1. **Prerrequisitos**
- Node.js y npm instalados
- Go instalado (para claat)
- Navegador web moderno

2. **Instalación**
```bash
# Clonar el repositorio
git clone https://github.com/googlecodelabs/tools.git
cd tools

# Instalar dependencias
npm install

# Construir claat
cd claat
go build
```

3. **Crear un documento** siguiendo las convenciones de sintaxis descritas en la [Guía de Formato de Codelabs](FORMAT-GUIDE.md). Aquí hay un [documento de ejemplo](https://docs.google.com/document/d/1E6XMcdTexh5O8JwGy42SY3Ehzi8gOfUGiqTiUX6N04o/). Siéntete libre de copiar ese documento como plantilla inicial. Una vez que tengas tu propio documento fuente, anota su DocId, que es la cadena larga cerca del final de la URL (justo después de docs.google.com/document/d/).

4. **Hacer cambios y previsualizar** tu codelab, usando la aplicación de vista previa proporcionada por Google. Para previsualizar un codelab, instala la [extensión de Chrome Preview Codelab](https://chrome.google.com/webstore/detail/preview-codelab/lhojjnijnkiglhkggagbapfonpdlinji) en tu navegador. Ahora puedes previsualizar un codelab directamente desde la vista de Google Doc haciendo clic en el botón de la extensión de Chrome, que abrirá una nueva pestaña para mostrar la vista previa. Alternativamente, navega manualmente a https://codelabs-preview.appspot.com/?file_id=<google-doc-id>

5. **Instalar el comando claat** -- consulta el [README en el directorio claat](https://github.com/googlecodelabs/tools/blob/master/claat/README.md) de este repo para instrucciones.

6. **Ejecutar el comando claat** para transformar el contenido del documento en uno de los formatos de salida soportados. Los formatos soportados por defecto son html y markdown, pero la herramienta claat soporta agregar formatos adicionales especificando una ruta a una plantilla Go. Por ejemplo, usando el documento de ejemplo anterior:

```
cd site/codelabs/
claat export 1rpHleSSeY-MJZ8JvncvYA8CFqlnlcrW8-a4uEaqizPY  
ok      your-first-pwapp
```

También puedes especificar un documento markdown (archivo .md) como entrada. Debe adherirse a las convenciones de sintaxis descritas [aquí](https://github.com/googlecodelabs/tools/tree/master/claat/parser/md)

```
cd site/codelabs/
claat export document.md
ok      your-md-based-codelab
```
7. **Ejecutar el comando gulp serve**.
```
cd site/codelabs/
gulp serve --codelabs-dir=codelabs
```



Esto iniciará un servidor web local y abrirá una pestaña del navegador al servidor local. Haz clic en el hipervínculo que representa tu codelab de interés para experimentar una versión completamente renderizada.

## Comandos de construcción disponibles

Desde el directorio raíz del proyecto:

```bash
# Limpiar archivos de construcción
npm run clean

# Construir todos los elementos
npm run build

# Ejecutar pruebas
npm run test

# Publicar a npm (solo para mantenedores)
npm run pub
```

## ¿Cómo genero mi propia página de inicio?

Consulta las instrucciones en el [readme del directorio site](site/README.md).

## ¿Cómo genero una vista personalizada?

Copia la [vista de muestra](site/app/views/vslive), personalízala a tu gusto, etiqueta y reconstruye los codelabs que quieres incluir, y luego genera tu vista.

## ¿Cómo publico mis codelabs?

La salida generada por `claat` es un conjunto puramente estático de código HTML o Markdown. Como tal, puede ser servido por cualquier mecanismo de servicio web, incluyendo cualquiera de las siguientes opciones:

* Github Pages (`*.github.io`)
* [Google App Engine](https://cloud.google.com/appengine)
* [Firebase Static Serving](https://firebase.google.com/products/hosting)
* [Google Cloud Storage](https://cloud.google.com/storage)
* Amazon Web Services S3
* Netlify
* Cualquier servidor web de código abierto (Nginx, Apache)
* `python -m SimpleHTTPServer` (Python 2)
* `python3 -m http.server` (Python 3)

Simplemente confirma los artefactos generados por el comando claat en tu vehículo de servicio preferido y deberías estar listo para comenzar.

El [directorio site](site) contiene herramientas para construir tus propias páginas de inicio personalizadas y publicar tanto páginas de inicio como codelabs en Google Cloud Storage.

## Formatos de entrada soportados

* Google Docs (siguiendo las convenciones de formato de FORMAT-GUIDE.md)
* Markdown

## Formatos de salida soportados

* Google Codelabs - HTML y Markdown
* Qwiklabs - Markdown
* Cloud Shell Tutorials - Markdown con directivas especiales
* Jupyter, Kaggle Kernels, Colaboratory, etc. - Markdown con celdas específicas del formato

No hay un "mejor" formato de publicación único. Cada formato tiene sus propias ventajas, desventajas, comunidad y dominio de aplicación. Por ejemplo, Jupyter tiene un seguimiento muy fuerte en las comunidades de ciencia de datos y Python.

Esta variedad de formatos es saludable porque estamos viendo nuevos enfoques innovadores todo el tiempo (por ejemplo, consulta observablehq.com, que recientemente lanzó su versión Beta).

Mientras que este ecosistema de formatos en evolución es generalmente algo bueno, tener que mantener tutoriales en múltiples formatos, o cambiar de un formato a otro puede ser doloroso. El formato de documento de Codelabs (como se especifica en FORMAT-GUIDE.md) puede proporcionar una especificación de alto nivel para mantener una única fuente de verdad, traducida programáticamente a uno o más formatos específicos de tutorial.

## Contribuciones

¡Sí, por supuesto! ¿Tienes ideas de características? Envíanos un pull request o reporta un error.

Antes de contribuir:
- Lee nuestro [CONTRIBUTING.md](CONTRIBUTING.md)
- Firma el [Acuerdo de Licencia de Contribuidor Individual de Google](https://cla.developers.google.com/about/google-individual)
- Todas las contribuciones requieren revisión de código a través de pull requests de GitHub

## Estructura del proyecto

```
├── claat/                  # Herramienta CLI principal para generar codelabs
├── codelab-elements/       # Elementos web personalizados para codelabs
├── site/                   # Herramientas para generar sitios web de codelabs
├── sample/                 # Ejemplos de codelabs
├── FORMAT-GUIDE.md         # Guía completa de formato
└── CONTRIBUTING.md         # Guía de contribución
```

## Ejemplos

Puedes encontrar ejemplos de codelabs en:
- [Directorio sample/](sample/) - Contiene codelabs de ejemplo
- [Sitio oficial de Google Codelabs](https://g.co/codelabs) - Cientos de codelabs publicados

## Recursos adicionales

* [Guía de Formato de Codelabs](FORMAT-GUIDE.md) - Documentación completa sobre cómo formatear codelabs
* [Grupo de autores de codelabs](https://groups.google.com/forum/#!forum/codelab-authors) - Comunidad de autores
* [Tutorial sobre publicación de codelabs](https://medium.com/@zarinlo/publish-technical-tutorials-in-google-codelab-format-b07ef76972cd)

## Notas

Este no es un producto oficial de Google.# Herramientas para crear y servir codelabs

Los codelabs son tutoriales interactivos educativos que se pueden crear en Google Docs usando algunas convenciones de formato simples. También puedes crear codelabs usando sintaxis Markdown. Este repositorio contiene todas las herramientas y documentación que necesitas para construir y publicar tus propios codelabs.

Si estás interesado en crear codelabs, crea un documento siguiendo la [Guía de Formato de Codelabs](FORMAT-GUIDE.md) y consulta el directorio [claat](claat) para una descripción detallada de la herramienta de línea de comandos `claat`.

También considera unirte al [grupo de Google codelab-authors](https://groups.google.com/forum/#!forum/codelab-authors), que te conecta con otros autores y proporciona actualizaciones sobre nuevas versiones.

## ¿Qué es esto?

Durante más de 3 años, el proyecto CLaaT (Codelabs as a Thing) ha dado a desarrolladores de todo el mundo una experiencia práctica con productos y herramientas de Google. Hemos acumulado más de 500 codelabs de alta calidad, servido millones de visitantes web y apoyado más de 100 eventos, desde reuniones locales hasta Google I/O.

Este proyecto ha sido implementado como un proyecto voluntario por un pequeño grupo de Googlers dedicados que se preocupan profundamente por este enfoque de "aprender haciendo" para la educación.

## ¿Qué hace especial a esta herramienta?

* Flujo de creación potente y flexible a través de Google Docs
* Soporte opcional para crear en texto Markdown
* Capacidad de producir tutoriales web o markdown interactivos sin escribir código
* Vista previa interactiva fácil
* Monitoreo de uso a través de Google Analytics
* Soporte para múltiples entornos objetivo (kiosco, web, markdown, offline, etc.)
* Soporte para uso anónimo - ideal para computadoras públicas en eventos de desarrolladores
* Se ve genial, con una implementación web responsiva
* Recuerda dónde se quedó el estudiante al regresar a un codelab
* Experiencia de usuario amigable para móviles

## ¿Puedo usar esto para crear mis propios codelabs y servir mis codelabs en línea?

Sí, la herramienta claat y el mecanismo de servicio pueden ser usados por cualquiera para crear sus propios codelabs y servir sus propios codelabs en la web.

También puedes usar esta herramienta para crear una página de resumen atractiva como la que ves en el [sitio oficial de Google Codelabs](https://g.co/codelabs).

Si estás interesado en crear codelabs, únete al [grupo codelab-authors](https://groups.google.com/forum/#!forum/codelab-authors), que te conecta con otros autores y proporciona acceso a la [Guía de Formato de Codelabs](FORMAT-GUIDE.md).

## ¿Cómo lo uso?

Consulta este [excelente tutorial](https://medium.com/@zarinlo/publish-technical-tutorials-in-google-codelab-format-b07ef76972cd).

### Configuración del proyecto

1. **Prerrequisitos**
- Node.js y npm instalados
- Go instalado (para claat)
- Navegador web moderno

2. **Instalación**
```bash
# Clonar el repositorio
git clone https://github.com/googlecodelabs/tools.git
cd tools

# Instalar dependencias
npm install

# Construir claat
cd claat
go build
```

3. **Crear un documento** siguiendo las convenciones de sintaxis descritas en la [Guía de Formato de Codelabs](FORMAT-GUIDE.md). Aquí hay un [documento de ejemplo](https://docs.google.com/document/d/1E6XMcdTexh5O8JwGy42SY3Ehzi8gOfUGiqTiUX6N04o/). Siéntete libre de copiar ese documento como plantilla inicial. Una vez que tengas tu propio documento fuente, anota su DocId, que es la cadena larga cerca del final de la URL (justo después de docs.google.com/document/d/).

4. **Hacer cambios y previsualizar** tu codelab, usando la aplicación de vista previa proporcionada por Google. Para previsualizar un codelab, instala la [extensión de Chrome Preview Codelab](https://chrome.google.com/webstore/detail/preview-codelab/lhojjnijnkiglhkggagbapfonpdlinji) en tu navegador. Ahora puedes previsualizar un codelab directamente desde la vista de Google Doc haciendo clic en el botón de la extensión de Chrome, que abrirá una nueva pestaña para mostrar la vista previa. Alternativamente, navega manualmente a https://codelabs-preview.appspot.com/?file_id=<google-doc-id>

5. **Instalar el comando claat** -- consulta el [README en el directorio claat](https://github.com/googlecodelabs/tools/blob/master/claat/README.md) de este repo para instrucciones.

6. **Ejecutar el comando claat** para transformar el contenido del documento en uno de los formatos de salida soportados. Los formatos soportados por defecto son html y markdown, pero la herramienta claat soporta agregar formatos adicionales especificando una ruta a una plantilla Go. Por ejemplo, usando el documento de ejemplo anterior:

```
cd site/codelabs/
claat export 1rpHleSSeY-MJZ8JvncvYA8CFqlnlcrW8-a4uEaqizPY  
ok      your-first-pwapp
```

También puedes especificar un documento markdown (archivo .md) como entrada. Debe adherirse a las convenciones de sintaxis descritas [aquí](https://github.com/googlecodelabs/tools/tree/master/claat/parser/md)

```
cd site/codelabs/
claat export document.md
ok      your-md-based-codelab
```
7. **Ejecutar el comando gulp serve**.
```
cd site/codelabs/
gulp serve --codelabs-dir=codelabs
```



Esto iniciará un servidor web local y abrirá una pestaña del navegador al servidor local. Haz clic en el hipervínculo que representa tu codelab de interés para experimentar una versión completamente renderizada.

## Comandos de construcción disponibles

Desde el directorio raíz del proyecto:

```bash
# Limpiar archivos de construcción
npm run clean

# Construir todos los elementos
npm run build

# Ejecutar pruebas
npm run test

# Publicar a npm (solo para mantenedores)
npm run pub
```

## ¿Cómo genero mi propia página de inicio?

Consulta las instrucciones en el [readme del directorio site](site/README.md).

## ¿Cómo genero una vista personalizada?

Copia la [vista de muestra](site/app/views/vslive), personalízala a tu gusto, etiqueta y reconstruye los codelabs que quieres incluir, y luego genera tu vista.

## ¿Cómo publico mis codelabs?

La salida generada por `claat` es un conjunto puramente estático de código HTML o Markdown. Como tal, puede ser servido por cualquier mecanismo de servicio web, incluyendo cualquiera de las siguientes opciones:

* Github Pages (`*.github.io`)
* [Google App Engine](https://cloud.google.com/appengine)
* [Firebase Static Serving](https://firebase.google.com/products/hosting)
* [Google Cloud Storage](https://cloud.google.com/storage)
* Amazon Web Services S3
* Netlify
* Cualquier servidor web de código abierto (Nginx, Apache)
* `python -m SimpleHTTPServer` (Python 2)
* `python3 -m http.server` (Python 3)

Simplemente confirma los artefactos generados por el comando claat en tu vehículo de servicio preferido y deberías estar listo para comenzar.

El [directorio site](site) contiene herramientas para construir tus propias páginas de inicio personalizadas y publicar tanto páginas de inicio como codelabs en Google Cloud Storage.

## Formatos de entrada soportados

* Google Docs (siguiendo las convenciones de formato de FORMAT-GUIDE.md)
* Markdown

## Formatos de salida soportados

* Google Codelabs - HTML y Markdown
* Qwiklabs - Markdown
* Cloud Shell Tutorials - Markdown con directivas especiales
* Jupyter, Kaggle Kernels, Colaboratory, etc. - Markdown con celdas específicas del formato

No hay un "mejor" formato de publicación único. Cada formato tiene sus propias ventajas, desventajas, comunidad y dominio de aplicación. Por ejemplo, Jupyter tiene un seguimiento muy fuerte en las comunidades de ciencia de datos y Python.

Esta variedad de formatos es saludable porque estamos viendo nuevos enfoques innovadores todo el tiempo (por ejemplo, consulta observablehq.com, que recientemente lanzó su versión Beta).

Mientras que este ecosistema de formatos en evolución es generalmente algo bueno, tener que mantener tutoriales en múltiples formatos, o cambiar de un formato a otro puede ser doloroso. El formato de documento de Codelabs (como se especifica en FORMAT-GUIDE.md) puede proporcionar una especificación de alto nivel para mantener una única fuente de verdad, traducida programáticamente a uno o más formatos específicos de tutorial.

## Contribuciones

¡Sí, por supuesto! ¿Tienes ideas de características? Envíanos un pull request o reporta un error.

Antes de contribuir:
- Lee nuestro [CONTRIBUTING.md](CONTRIBUTING.md)
- Firma el [Acuerdo de Licencia de Contribuidor Individual de Google](https://cla.developers.google.com/about/google-individual)
- Todas las contribuciones requieren revisión de código a través de pull requests de GitHub

## Estructura del proyecto

```
├── claat/                  # Herramienta CLI principal para generar codelabs
├── codelab-elements/       # Elementos web personalizados para codelabs
├── site/                   # Herramientas para generar sitios web de codelabs
├── sample/                 # Ejemplos de codelabs
├── FORMAT-GUIDE.md         # Guía completa de formato
└── CONTRIBUTING.md         # Guía de contribución
```

## Ejemplos

Puedes encontrar ejemplos de codelabs en:
- [Directorio sample/](sample/) - Contiene codelabs de ejemplo
- [Sitio oficial de Google Codelabs](https://g.co/codelabs) - Cientos de codelabs publicados

## Recursos adicionales

* [Guía de Formato de Codelabs](FORMAT-GUIDE.md) - Documentación completa sobre cómo formatear codelabs
* [Grupo de autores de codelabs](https://groups.google.com/forum/#!forum/codelab-authors) - Comunidad de autores
* [Tutorial sobre publicación de codelabs](https://medium.com/@zarinlo/publish-technical-tutorials-in-google-codelab-format-b07ef76972cd)

## Notas

Este no es un producto oficial de Google.
Puedes encontrar ejemplos de codelabs en:
- [Directorio sample/](sample/) - Contiene codelabs de ejemplo
- [Sitio oficial de Google Codelabs](https://g.co/codelabs) - Cientos de codelabs publicados

## Recursos adicionales

* [Guía de Formato de Codelabs](FORMAT-GUIDE.md) - Documentación completa sobre cómo formatear codelabs
* [Grupo de autores de codelabs](https://groups.google.com/forum/#!forum/codelab-authors) - Comunidad de autores
* [Tutorial sobre publicación de codelabs](https://medium.com/@zarinlo/publish-technical-tutorials-in-google-codelab-format-b07ef76972cd)

## Notas

Este no es un producto oficial de Google.
gulp serve --codelabs-dir=codelabs
```



Esto iniciará un servidor web local y abrirá una pestaña del navegador al servidor local. Haz clic en el hipervínculo que representa tu codelab de interés para experimentar una versión completamente renderizada.

## Comandos de construcción disponibles

Desde el directorio raíz del proyecto:

```bash
# Limpiar archivos de construcción
npm run clean

# Construir todos los elementos
npm run build

# Ejecutar pruebas
npm run test

# Publicar a npm (solo para mantenedores)
npm run pub
```

## ¿Cómo genero mi propia página de inicio?

Consulta las instrucciones en el [readme del directorio site](site/README.md).

## ¿Cómo genero una vista personalizada?

Copia la [vista de muestra](site/app/views/vslive), personalízala a tu gusto, etiqueta y reconstruye los codelabs que quieres incluir, y luego genera tu vista.

## ¿Cómo publico mis codelabs?

La salida generada por `claat` es un conjunto puramente estático de código HTML o Markdown. Como tal, puede ser servido por cualquier mecanismo de servicio web, incluyendo cualquiera de las siguientes opciones:

* Github Pages (`*.github.io`)
* [Google App Engine](https://cloud.google.com/appengine)
* [Firebase Static Serving](https://firebase.google.com/products/hosting)
* [Google Cloud Storage](https://cloud.google.com/storage)
* Amazon Web Services S3
* Netlify
* Cualquier servidor web de código abierto (Nginx, Apache)
* `python -m SimpleHTTPServer` (Python 2)
* `python3 -m http.server` (Python 3)

Simplemente confirma los artefactos generados por el comando claat en tu vehículo de servicio preferido y deberías estar listo para comenzar.

El [directorio site](site) contiene herramientas para construir tus propias páginas de inicio personalizadas y publicar tanto páginas de inicio como codelabs en Google Cloud Storage.

## Formatos de entrada soportados

* Google Docs (siguiendo las convenciones de formato de FORMAT-GUIDE.md)
* Markdown

## Formatos de salida soportados

* Google Codelabs - HTML y Markdown
* Qwiklabs - Markdown
* Cloud Shell Tutorials - Markdown con directivas especiales
* Jupyter, Kaggle Kernels, Colaboratory, etc. - Markdown con celdas específicas del formato

No hay un "mejor" formato de publicación único. Cada formato tiene sus propias ventajas, desventajas, comunidad y dominio de aplicación. Por ejemplo, Jupyter tiene un seguimiento muy fuerte en las comunidades de ciencia de datos y Python.

Esta variedad de formatos es saludable porque estamos viendo nuevos enfoques innovadores todo el tiempo (por ejemplo, consulta observablehq.com, que recientemente lanzó su versión Beta).

Mientras que este ecosistema de formatos en evolución es generalmente algo bueno, tener que mantener tutoriales en múltiples formatos, o cambiar de un formato a otro puede ser doloroso. El formato de documento de Codelabs (como se especifica en FORMAT-GUIDE.md) puede proporcionar una especificación de alto nivel para mantener una única fuente de verdad, traducida programáticamente a uno o más formatos específicos de tutorial.

## Contribuciones

¡Sí, por supuesto! ¿Tienes ideas de características? Envíanos un pull request o reporta un error.

Antes de contribuir:
- Lee nuestro [CONTRIBUTING.md](CONTRIBUTING.md)
- Firma el [Acuerdo de Licencia de Contribuidor Individual de Google](https://cla.developers.google.com/about/google-individual)
- Todas las contribuciones requieren revisión de código a través de pull requests de GitHub

## Estructura del proyecto

```
├── claat/                  # Herramienta CLI principal para generar codelabs
├── codelab-elements/       # Elementos web personalizados para codelabs
├── site/                   # Herramientas para generar sitios web de codelabs
├── sample/                 # Ejemplos de codelabs
├── FORMAT-GUIDE.md         # Guía completa de formato
└── CONTRIBUTING.md         # Guía de contribución
```

## Ejemplos

Puedes encontrar ejemplos de codelabs en:
- [Directorio sample/](sample/) - Contiene codelabs de ejemplo
- [Sitio oficial de Google Codelabs](https://g.co/codelabs) - Cientos de codelabs publicados

## Recursos adicionales

* [Guía de Formato de Codelabs](FORMAT-GUIDE.md) - Documentación completa sobre cómo formatear codelabs
* [Grupo de autores de codelabs](https://groups.google.com/forum/#!forum/codelab-authors) - Comunidad de autores
* [Tutorial sobre publicación de codelabs](https://medium.com/@zarinlo/publish-technical-tutorials-in-google-codelab-format-b07ef76972cd)

## Notas

Este no es un producto oficial de Google.