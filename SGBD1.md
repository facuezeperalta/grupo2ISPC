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

*Este esquema está en completo desuso, ya que no es válido para modelar la mayoría de los problemas de la BD.

La información se organiza con una jerarquía con relacioens entre entidades de tipo padre-hijo. Hay una serie de nodos que contendrán atributos y se relacionarán con nodos hijos, por lo que puede haber más de un hijo para el mismo padre, pero un hijo solo tiene un padre. 

* Los datos se almacenan en segmentos, relacionacionados entre sí con arcos. 
* La forma visual es un árbol invertido: superior-padres, inferior-hijos. 

## MODELO EN RED (CODASYL)
- BD DE PRIMERA GENERACIÓN. 

*Gran aceptación, aunque apenas se utiliza actualmente.

Organiza la información en registros (nodos) y enlaces. Los registros almacenan datos, y los enlaces permiten relacionar esos datos. Se puede representar cualquier tipo de relación entre los datos, pero hace muy complicado su manejo. 

* Son parecidas a las jerárquicas, soolo que en ellas puede haber más de un padre. 

## MODELO RELACIONAL (MR)
- BD DE SEGUNDA GENERACIÓN. 
- Más popular. 

Datos organizados en tablas cuyos datos se relacionan. 

## MODELO DE BD ORIENTADA A OBJETOS (POO u OOP) 
- BD DE TERCERA GENERACIÓN. 
- El futuro parece estar a favor de estas BD. 

La programación orientada a objetos permite cohesionar datos y procedimientos, haciendo que se diseñen estructuras que poseen datos (atributos) con procedimientos (operaciones) que pueden realizar con los datos. En las BD orientadas a objetos es la misma ieda. 

- Su modelo concpetual se suele diseñar en UML, y el lógico en ODMG (Object Data Management Group). 
- Se intenta arreglar limitaciones de las BD relacionales, pero sigue sin reemplazarlas. 

## BD OBJETO-RELACIONALES. 
- Híbridas entre el MR y el POO. 

Se busca la compatibilidad relacional para integrar mejoras de la orientación a objetos. Se basan en el estándard SQL 99, añadiendo a las BD la posibilidad de almacenar procedimientos de usuario, triggers, tipos definidos por el usuario, consultas recursivas, BD OLAP, tipos LOB,...

*Problema: Requieren reinvertir capital y esfuerzos de nuevo para convertir las BD relacionales en BD orientadas a objetos. 

- Las últimas versiones de la mayoría de las clásicas grandes BD relacionales (Oracle, SQL, Server, Informix,...) son objeto-relacionales. 

## BD NoSQL
- De estructuras diversas. 

Priorizan el acceso rápido a la información por sobre su integridad. Están pensadas para grabar datos de manera veloz para atender millones de peticiones.La idea es que los datos apenas necesiten validarse y relacionarse, lo importante esla disponibilidad de la propia BD. 

- Modelo de grandes servicios de Internet (Twitter, Facebook, Amazon, etc.) 
- Rompe con el lenguaje SQL para poder manipular los datos con otros lenguajes (mongoBD, Azure Cosmos DB, Arango DB, Google Cloud Firestore, redis, Amazon DynamoDB, etc.) 
