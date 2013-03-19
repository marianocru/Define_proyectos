Feature: Gestionar proyectos
  El usuario gestiona los proyectos
  Recordar mayusculas al definir el campo ej Titulo y no titulo

  Scenario: Agregar un nuevo proyecto
    Given Voy a la pagina de alta proyecto
    And Ingreso in "Titulo" with "Mi proyecto"
    And Ingreso in "Descripcion" with "Mi proyecto test"
    And Ingreso in "Objetivo" with "Mi objetivo"
    And Ingreso in "Resultado" with "Mi resultado"
    When Presiono "Create"
    Then Espero ver la pagina de datos del proyecto
    And Espero ver un proyecto con "Mi proyecto"

  Scenario: Ver datos de mi proyecto
    Given los siguientes proyectos:
      |id|titulo             |descripcion    |
      |1|Proyecto 1      |La descripcion 1|
      |2|Proyecto 2      |La descripcion 2|
      |3|Proyecto 3      |La descripcion 3|
    And Voy a la pagina de mostrar datos del proyecto llamado "Proyecto 2"
    Then Espero ver en titulo "Mostrar Proyecto"
    And Espero ver el  proyecto con titulo "Mi proyecto"


