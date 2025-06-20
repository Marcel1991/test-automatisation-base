@ObtenerDatosMarvel @TSM-001
Feature: Test de API súper simple

  Background:
    * configure ssl = true
    * def urlTest = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'

    @VerificarEndpointMarvel
    Scenario: Verificar que un endpoint Marvel responde 200
    Given url urlTest
    When method get
    Then status 200

    @VerificarEndpointMarvelConId
    Scenario: Verificar que un endpoint Marvel responde 200 con un id existente
    Given url urlTest + '/167'
    When method get
    Then status 200

  @VerificarEndpointMarvelConIdInexistente
    Scenario: Verificar que un endpoint Marvel responde 404 con un id inexistente
    Given url urlTest + '/999999'
    When method get
    Then status 404

    @VerificarEndpointMarvelSinId
    Scenario: Verificar que un endpoint Marvel responde 404
    Given url urlTest + '/999'
    When method get
    Then status 404