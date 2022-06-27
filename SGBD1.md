# ARQUITECTURA
Se proporciona un conjunto coordinado de programas, procedimientos y lenguajes que permiten a los usuarios realizar sus tareas habituales con los datos, garantizando la seguridad de los mismos. 

HERRAMIENTAS PARA: 

* Creación y especificación de datos. Estructuras, tipos de datos, restricciones y relaciones entre ellos mediante lenguajes. (toda esta info se almacena en el diccionario de datos, con sus mecanismos de gestión)

* Manipulación de los datos. Añadir, modificar, suprimir o consultarlos. 

* Recuperación. 

* Creación de copias de seguridad. Para reestablecer la información en caso de fallas de sistema. 

* Gestión de la comunicación (de la BD). 

* Creación de aplicaciones (que utilicen esquemas externos de los datos). 

* Instalación de la BD. 

* Importación y exportación de datos.

# NIVELES DE ABSTRACCIÓN
## 1. Nivel INTERNO/FÍSICO
Tal como están almacenados los datos en el ordenador, discos ocultos a los usuarios. Es una estructura física con un esquema/modelo interno detallado. 
- Solo lo requiere el ADMINISTRADOR. 

## 2. Nivel EXTERNO/DE VISIÓN
*Es el más cercano a los usuarios - vistas de usuario. 

Son varios esquemas. Visión de los datos que poseen los usuarios finales, obtenida a través de aplicaciones. 

*Las aplicaciones creadas por desarrolladores abstraen la realidad conceptual de modo que el usuario no conoce las relaciones entre los datos ni a dónde realmente están almacenados. 

*Cada aplicación produce un esquema externo/vista de usuario diferente (aunque pueden coincidir). 

*El conjunto de todas las vistas de usuario se llama esquema externo global.

- Lo realizan los PROGRAMADORES según las indicaciones formales de los ANALISTAS. 

## 3. Nivel CONCEPTUAL
- Plano/modelo general de la BD. 
Es un esquema teórico de los datos en el que figuran organizados en estructuras reconocibles del mundo real y en el que también aparece la forma de relacionarse. 

Se hace mediante un esquema conceptual, con entidades, atributos, relaciones, operaciones de usuarios y restricciones, ocultando detalles de estructuras físicas de almacenamiento. Representa la información contenida en la BD y permite modelar un problema real a su forma correspondiente en el ordenador. 

*Es la base de todos los demás, el primer paso. 

- Lo realizan DISEÑADORES o ANALISTAS. 

# TIPOS DE SGBD

Hay modelos conceptuales diferentes según el SGBD a utilizar.

     Mundo real -----> Esquema Conceptual -----> Esquema Lógico -----> Esquema Interno -----------> Base de Datos física
                        Modelo conceptual           Modelo Lógico         Modelo Interno
                        Válido para cualquier BD    Depende del SGBD      Depende del SGBD particular
     
     *la diferencia entre SGBD reside en que proporcionan diferentes modelos lógicos.
                       
### MODELO LÓGICO VS MODELO CONCEPTUAL
El Lógico depende del SGBD particular. El Conceptual es independiente del SGBD que se utilice. 

El Lógico es el más cercano al modelo físico. El Conceptual es el más cercano al usuario. 

El Lógico es el encargado de establecer el paso entre el Conceptual y el Físico. 

Ejemplos del ML: 

- Modelo relacional. 
- Modelo Codasyl. 
- Modelo Jerárquico.

Ejemplos del MC: 
- Modelo entidad relación. 
- Modelo RM/T. 
- Modelo UML. 

## MODELO JERÁRQUICO (o del árbol)
-Utilizado por los primeros SGBD. 
