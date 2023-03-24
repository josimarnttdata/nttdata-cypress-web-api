Feature: Client

  @db-HappyPath
  Scenario Outline: Create Client
    Given A query to select all clients
    And verify if users with ids exists "<dni>"
    When insert client data
      | firstName   | lastName   | dni   | email   | address   | phone   |
      | <firstName> | <lastName> | <dni> | <email> | <address> | <phone> |

    Examples: 
      | firstName | lastName | dni     | email             | address   | phone     |
      | Josimar   | Leon     | 1234567 | josimar@gmail.com | surquillo | 998123576 |
