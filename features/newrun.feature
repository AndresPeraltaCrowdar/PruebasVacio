Feature: New run
  
  @EliminarCreacionesWeb @Automated
  Scenario Outline: Agregar escenarios a una run dinámica en estado <estado> (<idioma>)
    Given Existe una run Run de Folder creado por usuario de automation con estado <estado> para el proyecto Proyecto de Automation con el gestor Gitlab y asociado a Ningún Gestor
    And el cliente está logueado con el usuario de automation
    And el cliente se encuentra en el proyecto Proyecto de Automation
    And el cliente se encuentra dentro de la run Run de Folder
    And el idioma del sistema está en <idioma>
    And hace click en la elipsis de la Run
    And hace click en <boton>
    And hace click en el botón ícono "Desplegable" del archivo <archivo>
    And hace click en el checkbox del <unidad>
    And hace click en el boton Agregar
    Then se visualiza la prueba agregada correctamente en la run con el nombre Login

    @ES
    Examples:
      | idioma | estado       | boton                   | archivo   | unidad          |
      | ES     | NO EJECUTADO | Agregar casos de prueba | feature   | caso de prueba  |
      | ES     | NO EJECUTADO | Agregar casos de prueba | feature   | archivo         |
      | ES     | NO EJECUTADO | Agregar casos de prueba | testcase  | caso de prueba  |
      | ES     | EN PROGRESO  | Agregar casos de prueba | feature   | caso de prueba  |
      | ES     | EN PROGRESO  | Agregar casos de prueba | feature   | archivo         |
      | ES     | EN PROGRESO  | Agregar casos de prueba | testcase  | caso de prueba  |

    @EN
    Examples:
      | idioma | estado       | boton           | archivo   | unidad          |
      | EN     | UNEXECUTED   | Add test cases  | feature   | caso de prueba  |
      | EN     | UNEXECUTED   | Add test cases  | feature   | archivo         |
      | EN     | UNEXECUTED   | Add test cases  | testcase  | caso de prueba  |
      | EN     | IN PROGRESS  | Add test cases  | feature   | caso de prueba  |
      | EN     | IN PROGRESS  | Add test cases  | feature   | archivo         |
      | EN     | IN PROGRESS  | Add test cases  | testcase  | caso de prueba  |
      
      
  @EliminarCreacionesWeb @Automated
  Scenario Outline: Agregar escenarios a una run dinámica en estado <estado> mediante filto por <filtro> (<idioma>)
    Given Existe una run Run de Folder creado por usuario de automation con estado <estado> para el proyecto Proyecto de Automation con el gestor Gitlab y asociado a Ningún Gestor
    And el cliente está logueado con el usuario de automation
    And el cliente se encuentra en el proyecto Proyecto de Automation
    And el cliente se encuentra dentro de la run Run de Folder
    And el idioma del sistema está en <idioma>
    And hace click en la elipsis de la Run
    And hace click en <boton>
    And hace click en <filtro>
    And hace click en el botón ícono "Desplegable" del archivo <archivo>
    And hace click en el checkbox del <unidad>
    And hace click en el boton Agregar
    Then se visualiza la prueba agregada correctamente en la run con el nombre Login

    @ES
    Examples:
      | idioma | estado       | boton                   | archivo   | unidad          | filtro  |
      | ES     | NO EJECUTADO | Agregar casos de prueba | feature   | caso de prueba  ||
      
      
  @EliminarCreacionesWeb @Automated
  Scenario Outline: Descartar la adición de casos de prueba en una run dinámica en estado <estado>  (<idioma>)
    Given Existe una run Run de Folder creado por usuario de automation con estado <estado> para el proyecto Proyecto de Automation con el gestor Gitlab y asociado a Ningún Gestor
    And el cliente está logueado con el usuario de automation
    And el cliente se encuentra en el proyecto Proyecto de Automation
    And el cliente se encuentra dentro de la run Run de Folder
    And el idioma del sistema está en <idioma>
    And hace click en la elipsis de la Run
    And hace click en <boton>
    And hace click en el botón "Descartar"
    Then se visualiza la run

    @ES
    Examples:
      | idioma | estado       | boton                   | 
      | ES     | NO EJECUTADO | Agregar casos de prueba |
      | ES     | EN PROGRESO  | Agregar casos de prueba |
      
    @EN
    Examples:
      | idioma | estado       | boton           | 
      | EN     | UNEXECUTED   | Add test cases  |
      | EN     | IN PROGRESS  | Add test cases  |