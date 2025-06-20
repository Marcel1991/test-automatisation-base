@ActualizarDatosMarvel @TSM-003
Feature: Test actualizar personaje en Marvel

  Background:
    * configure ssl = true
    * def urlTest = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'

    @ActualizarPersonajeExistente
    Scenario: Actualizar un personaje existente
      * def requestPayload = read('classpath:../data/CharacterUpdate.json')
      Given url urlTest + '/230'
      And request requestPayload
      When method put
      Then status 200

      @ActualizarPersonajeInexistente
      Scenario: Actualizar un personaje inexistente
        * def requestPayload = read('classpath:../data/CharacterUpdate.json')
        Given url urlTest + '/999'
        And request requestPayload
        When method put
        Then status 404