Feature: Restful Booker API
    Feature Description

  @HappyPath
  Scenario: Create Token Succesfully
    Given User registered on the API
    When I access the API request endpoint to create token
      | enviroment | username | password    |
      | qa         | admin    | password123 |
    Then Verify the response status code "200"


  @AlternativePath @skip
  Scenario: Create Token Insucessfully
    Given User registered on the API
    When I access the API request endpoint to create token
      | enviroment | username | password    |
      | qa         | admin    | password123 |
    Then Verify the response status code "400"
    #And Verify the table token is not null
