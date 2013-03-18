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
    Given estan cargados los siguientes proyectos
    And Voy a la pagina de mostrar proyecto con id igual a 1
    Then Espero ver en titulo "Mostrar Proyecto"
    And Espero ver el  proyecto con titulo "Mi proyecto"

    |titulo             |descripcion    |
    |Mi Proyecto 1      |La descripcion|
