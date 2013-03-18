Feature: Manage meta
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new meta
    Given I am on the new meta page
    When I fill in "Descripcion" with "descripcion 1"
    And I fill in "Duracion estimada" with "duracion_estimada 1"
    And I fill in "Duracion real" with "duracion_real 1"
    And I fill in "Float" with "float 1"
    And I fill in "Estado" with "estado 1"
    And I press "Create"
    Then I should see "descripcion 1"
    And I should see "duracion_estimada 1"
    And I should see "duracion_real 1"
    And I should see "float 1"
    And I should see "estado 1"

  Scenario: Delete meta
    Given the following meta:
      |descripcion|duracion_estimada|duracion_real|float|estado|
      |descripcion 1|duracion_estimada 1|duracion_real 1|float 1|estado 1|
      |descripcion 2|duracion_estimada 2|duracion_real 2|float 2|estado 2|
      |descripcion 3|duracion_estimada 3|duracion_real 3|float 3|estado 3|
      |descripcion 4|duracion_estimada 4|duracion_real 4|float 4|estado 4|
    When I delete the 3rd meta
    Then I should see the following meta:
      |Descripcion|Duracion estimada|Duracion real|Float|Estado|
      |descripcion 1|duracion_estimada 1|duracion_real 1|float 1|estado 1|
      |descripcion 2|duracion_estimada 2|duracion_real 2|float 2|estado 2|
      |descripcion 4|duracion_estimada 4|duracion_real 4|float 4|estado 4|
