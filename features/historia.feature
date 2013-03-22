Feature: Gestionar historia
  El usuario gestiona historia de los proyectos
  Recordar mayusculas al definir el campo ej Duracion y no duracion

  Scenario: Agregar una nueva historia
    Given Voy a la pagina de alta historia
    And Ingreso in "Detalle" with "descripcion de la historia"
    And Ingreso in "Estado" with "estado de la misma"
    And Ingreso in "Duracion" with "tiempo de duraccion"
    When Presiono "Create"
    Then Espero ver la pagina de datos de la historia del proyecto
    And Espero ver una historia con "Detalle de la historia"

    Scenario: Editar datos de historia
      Given los siguientes historias:
        |detalle|estado|duracion    |
        |Detalle 1|Estado 1|Duracion 1|
        |Detalle 2|Estado 2|Duracion 2|
        |Detalle 3|Estado 3|Duracion 3|
      And Estoy en la pagina del listado de historias
      And Presiono "Edit" del 3er historia
      Then Espero ver en la pagina "Editing historia"
      And Ingreso in "Estado" with "nuevo estado"
      And Presiono "Update"
      And Espero ver el mensaje de "La historia se ha actualizado."
      And Espero ver un proyecto con "nuevo estado"