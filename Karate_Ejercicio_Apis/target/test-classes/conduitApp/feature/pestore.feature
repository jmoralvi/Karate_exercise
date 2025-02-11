@test1
Feature: API de PetStore - Creación y consulta de usuario, listado de mascotas vendidas

  Scenario: Crear usuario y recuperar sus datos
    * def user = { "id": 1234, "username": "testUser", "firstName": "John", "lastName": "Doe", "email": "john.doe@example.com", "password": "password", "phone": "123456789", "userStatus": 1 }
    Given url 'https://petstore.swagger.io/v2/user'
    And request user
    When method POST
    Then status 200

    Given url 'https://petstore.swagger.io/v2/user/testUser'
    When method GET
    Then status 200
    * print response

  Scenario: Obtener mascotas vendidas y procesar datos
    Given url 'https://petstore.swagger.io/v2/pet/findByStatus?status=available'
    When method GET
    Then status 200
    * def pets = response
    * def petNamesAndIds = []
    * karate.forEach(pets, function(pet) { petNamesAndIds.add({ name: pet.name, id: pet.id }) })
    * print petNamesAndIds
  Scenario: Count names of pets
    Given url 'https://petstore.swagger.io/v2/pet/findByStatus?status=available'
    When method get
    Then status 200
    * def pets = response
    * def nameCount = Java.type('PetCounter').countPetNames(pets)
    * print nameCount
