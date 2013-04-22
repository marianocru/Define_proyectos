Feature: Gestionar historia
  El usuario gestiona historia de los proyectos


  Scenario: Agregar nueva historia
    Given Voy a la pagina de alta
    And Ingreso in "Detalle" with "descripcion de la historia"
    And Ingreso in "Estado" with "estado de la misma"
    And Ingreso in "Duracion" with "tiempo de duraccion"
    When Presiono "Create"
    Then mensaje de registro ok en pagina
    And  Espero ver "descripcion de la historia"

    Scenario: Editar datos de una historia
      Given las siguientes historias:
        |detalle|estado|duracion|
        |Detalle 1|Estado 1|Duracion 1|
        |Detalle 2|Estado 2|Duracion 2|
        |Detalle 3|Estado 3|Duracion 3|
      And Estoy en pagina de listado
      And Presiono "Edit" del 2do 
      Then Espero ver en la pagina "Editing historia"
      And Ingreso in "Estado" with "nuevo estado"
      And Presiono "Update"
      And mensaje de actualizacion de registro ok en pagina
      And Espero ver "nuevo estado"
      
  Scenario: Eliminar una historia
        Given las siguientes historias:
        |detalle|estado|duracion|
        |Detalle 1|Estado 1|Duracion 1|
        |Detalle 2|Estado 2|Duracion 2|
        |Detalle 3|Estado 3|Duracion 3|
        And Estoy en pagina de listado
        And Presiono "Destroy" del 2do 
        Then Espero que la tabla quede como la siguiente:
          | Detalle   | Estado   | Duracion   |  
          | Detalle 1 | Estado 1 | Duracion 1 |           
          | Detalle 3 | Estado 3 | Duracion 3 |               
          
    @javascript
      Scenario: Buscar un proyecto
      Given las siguientes historias:
       |detalle|estado|duracion|
       |Detalle 1|Estado 1|Duracion 1|
       |Detalle 2|Estado 2|Duracion 2|
       |Detalle 3|Estado 3|Duracion 3|
      And voy a la pagina de "consultar" de "historias"
      And Ingreso in "detalle" with "2"
      When Presiono "Buscar"
      Then Espero que la tabla ajax quede como la siguiente:
      | Detalle   | Estado   | Duracion   |  
      | Detalle 2 | Estado 2 | Duracion 2 |   
         