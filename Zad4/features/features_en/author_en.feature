Feature: Author
  Zadaniem klasy jest sprawdzenie czy tworzenie obiektu author działa poprawnie

  @author @en
  Scenario Outline: Create a new author - success
    Given firstname is <firstname>
    And lastname is <lastname>
    And email is <email>
    When creating an author object
    Then author is created

    Examples:
      | firstname | lastname | email                |
      | Jan       | Kowalski | example@example.com  |
      | Ola       | Kot      | example22@examplecom |
      | Michal    | Nowak    | exa@example          |

  @author @en
  Scenario Outline: Create a new author - failure
    Given firstname is <firstname>
    And lastname is <lastname>
    And email is <email>
    When creating an author object
    Then error

    Examples:
      | firstname | lastname | email               |
      | Jan       | Kowalski | example.com         |
      | Ola       |          | example@example.com |
      |           | Nowak    | example@example.com |
      |           |          | example.com         |
      | Ola       |          |                     |
      |           | Nowak    |                     |
      |           |          |                     |
