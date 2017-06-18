# Docker-whenever-curl

Corre crond sobre alpine para ejecutar tareas programadas con RPC mediante curl, la generacion del crontab se hace mediante whenever.

## Uso de la imagen

~~~
docker run -d -v $PWD:/app pperez/whenever-curl:1.0.0
~~~

## Volúmenes

* ```/app```: Contiene la configuración de programacion de tareas con [whenever](https://github.com/javan/whenever).

## Creacion de crontab

Para esta tarea se utiliza [whenever](https://github.com/javan/whenever), configurando el fichero ```config/schedule.rb```, este ya debería existir (luego de haber ejecutado el contenedor al menos una vez) y se escribe con la _DSL_ descrita en el repositorio de whenever.
Al iniciar el contenedor leerá este fichero y generará el crontab acorde.
