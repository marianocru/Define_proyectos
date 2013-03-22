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

  Scenario: Editar datos de mi proyecto
    Given los siguientes proyectos:
      |titulo|descripcion    |
      |Proyecto 1|La descripcion 1|
      |Proyecto 2|La descripcion 2|
      |Proyecto 3|La descripcion 3|
    And Estoy en la pagina del listado de proyectos
    And Presiono "Edit" del 2do proyecto
    Then Espero ver en la pagina "Editing proyecto"
    And Ingreso in "Titulo" with "Mi proyecto"
    And Presiono "Update"
    And Espero ver el mensaje de "El proyecto se ha actualizado."
    And Espero ver un proyecto con "Mi proyecto"

  Scenario: Eliminar un proyecto
    Given los siguientes proyectos:
      |titulo|descripcion    |
      |Proyecto 1|La descripcion 1|
      |Proyecto 2|La descripcion 2|
      |Proyecto 3|La descripcion 3|
    And Estoy en la pagina del listado de proyectos
    And Presiono "Destroy" del 2do proyecto
    Then Espero que la tabla quede como la siguiente:
      | Titulo     | Descripcion      | Objetivo | Resultado |
      | Proyecto 1 | La descripcion 1 |          |           |
      | Proyecto 3 | La descripcion 3 |          |           |

  @javascript
  Scenario: Buscar un proyecto
    Given los siguientes proyectos:
      |titulo|descripcion    |
      |Proyecto 1|La descripcion 1|
      |Proyecto 2|La descripcion 2|
      |Proyecto 3|La descripcion 3|
    And voy a la pagina de "consultar" de "proyectos"
    And Ingreso in "titulo" with "3"
    And Presiono "Buscar"
    Then Espero que la tabla ajax quede como la siguiente:
      | Titulo     | Descripcion      | Objetivo | Resultado |
      | Proyecto 3 | La descripcion 3 |          |           |
