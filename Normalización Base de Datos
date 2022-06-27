Objetivo de la normalización: Proceso para la simplificación de los datos.
+ Tener almacenado con el menor espacio posible.
+Eliminar datos repetidos.
+Eliminar errores lógicos.
+Datos ordenados.

Problemas en el diseño de los modelos:

*Redundancia: Son datos que se repiten continua e innecesariamente en las tablas de bases de datos. Se detecta fácilmente.
*Ambigûedades: Son datos que no clarifican al elemento al cual representan. Es difícil de detectar, porque los datos de cada fila se pueden referir a más de un ejemplar, o pude ser imposible de saber a qué ejemplar exactamente se están refiriendo.
*Pérdida de restricciones de integridad: Se origina debido a dependencias funcionales. Se arregla fácilmente, siguendo una serie de pasos.
*Anomalías en operaciones de modificación de datos: El hecho de que al insertar un solo elemento haya que repetir tuplas en una tabla para variar unos pocos datos. O que eliminar un elemento suponga eliminar varias tuplas necesariamente (por ejemplo que eliminar un cliente suponga borrar seis o siete filas de la tabla de clientes, sería un error muy grave y por lo tanto un diseño terrible).

Simplificación de los datos:
Debe darse sin que se pierdan datos. 
(1FN) Primera Forma Normal: Cuando en una tabla  •	Todos los atributos son «atómicos». Por ejemplo, en el campo teléfono no tenemos varios teléfonos.
                                           ●	La tabla contiene una clave primaria única. Por ejemplo el DNI para personas, la patente para vehículos o un simple id autoincremental. Si no tiene clave, no es 1FN.
                                           ●	La clave primaria no contiene atributos nulos. No podemos tener filas para las que no haya clave (por ejemplo, personas sin DNI o vehículos sin patente).
                                           ●	No debe existir variación en el número de columnas. Si algunas filas tienen 8 columnas y otras 3, pues no estamos en 1FN.
                                           ●	Los campos no clave deben identificarse por la clave. Es decir, que los campos no clave dependen funcionalmente de la clave. Esto es prácticamente lo mismo que decir que existe clave primaria.
                                           ●	Debe Existir una independencia del orden tanto de las filas como de las columnas, es decir, si los datos cambian de orden no deben cambiar sus significados.
(2FN) Segunda Forma Normal: Cuando en una tabla ● Si además de estar en 1FN cumple que los atributos no clave depende de TODA la clave principal.  
                                                ● Se deben identificar ls dependencias funcionales y transitivas.
(3FN) Tercera Forma Normal: Cuando en una tabla ● Está en 3FN si además de estar en 2FN no existe ninguna dependencia transitiva entre los atributos que no son clave. 
                                                ●	Como dijo Bill Kent, «todo atributo no clave debe proporcionar información sobre la clave, sobre toda la clave y nada más que la clave… con la ayuda de Codd».                                              
