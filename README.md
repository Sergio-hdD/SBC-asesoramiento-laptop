# Asesoramiento de Laptop

***
_Sistema basado en conocimentos que sugiere una laptop en base al uso, tamaño, costo y bateria del mismo._
***
## Ejecutar en CLIPS IDE 
### Opción 1

_Ingresar a File/Load para cargar los respectivos archivos del proyecto._

``` 
Cargar todos los templates 
```

``` 
Cargar todos las reglas 
```

``` 
Cagar el main 
```

```
Correr el programa con "(run)"
```

### Opción 2
Opción alternativa (para no cargar los archivos manualmente) 
```
Cambiar el path (de ser necesario por la ubicación del proyecto)
```
```
Ingresar a File/Load Batch...
y cagar el archivo "setup.bat" 
```
Este archivo (setup.bat) contiene las siguientes instrucciones:

- (clear) ; Para borrar la memoria de trabajo.
- (load path/archivo.clp) ; De cada uno de los archivos de reglas, templates y el main.
- (reset) ; Para cargar la memoria de trabajo.
- (run) ; Para ejecutar

