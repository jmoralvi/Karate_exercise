Feature: Count pet names
  @pet_counter
  Scenario: Count names of pets
    Given url 'https://petstore.swagger.io/v2/pet/findByStatus?status=available'
    When method get
    Then status 200
    * def pets = response
    * def nameCount = Java.type('PetCounter').countPetNames(pets)
    * print nameCount