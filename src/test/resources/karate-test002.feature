@ObtenerDatosMarvel @TSM-002
Feature: Test crear personaje en Marvel

  Background:
    * configure ssl = true
    * def urlTest = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'

    @VerificaCrearPersonaje
  Scenario: Crear un personaje
    * def requestPayload = read('classpath:../data/Character.json')
    Given url urlTest
    And request requestPayload
    When method post
    Then status 201

    @VerificaPersonajeExistente
    Scenario: Personaje creado ya existe
    * def requestPayload = read('classpath:../data/Character.json')
    Given url urlTest
    And request requestPayload
    When method post
    Then status 400

      @VerificarCamposPersonaje
      Scenario: Personaje faltan campos
        * def requestPayload = read('classpath:../data/CharacterIncomplete.json')
        Given url urlTest
        And request requestPayload
        When method post
        Then status 400

