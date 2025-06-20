@EliminarDatosMarvel @TSM-004
Feature: Test actualizar personaje en Marvel

  Background:
    * configure ssl = true
    * def urlTest = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'

    @EliminarPersonajeExistente
    Scenario: Eliminar un personaje existente
      Given url urlTest + '/1'
      When method delete
      Then status 200

@EliminarPersonajeInexistente
      Scenario: Eliminar un personaje inexistente
        Given url urlTest + '/999'
        When method delete
        Then status 404

