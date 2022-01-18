Feature: Book

  @book @en 
  Scenario Outline: Create a new book - success
    Given title is <title>
    And ISBN is <isbn>
    And author firstname is <firstname>
    And author lastname is <lastname>
    And author email is <email>
    When creating an author object
    And creating an book object
    Then book is created

    Examples:
      | title    | isbn                      | firstname | lastname    | email                |
      | Krzyzacy | 978-3-16-148410-0         | Henryk    | Sienkiewicz | example@example.com  |
      | Lalka    | 9783161484100             | Boleslaw  | Prus        | example2@example.com |
      | Krzyzacy | 978-8 3-718 1-5 10-2      | Henryk    | Sienkiewicz | example@example.com  |
      | Lalka    | 978-83-7181-510-2         | Boleslaw  | Prus        | example2@example.com |
      | Lalka    | 9 7 8 1 5 6 6 1 9 9 0 9 4 | Boleslaw  | Prus        | example2@example.com |

  @book @en 
  Scenario Outline: Create a new book - failure because of the book
    Given title is <title>
    And ISBN is <isbn>
    And author firstname is <firstname>
    And author lastname is <lastname>
    And author email is <email>
    When creating an author object
    And creating an book object
    Then error

    Examples:
      | title | isbn                      | firstname | lastname    | email                |
      |       | 978-3-16-148410-0         | Henryk    | Sienkiewicz | example@example.com  |
      |       | 9783161484100             | Boleslaw  | Prus        | example2@example.com |
      |       | 978-8 3-718 1-5 10-2      | Henryk    | Sienkiewicz | example@example.com  |
      |       | 978-83-7181-510-2         | Boleslaw  | Prus        | example2@example.com |
      |       | 9 7 8 1 5 6 6 1 9 9 0 9 4 | Boleslaw  | Prus        | example2@example.com |

  @book @en
  Scenario Outline: Create a new book - failure because of the book ISBN
    Given title is <title>
    And ISBN is <isbn>
    And author firstname is <firstname>
    And author lastname is <lastname>
    And author email is <email>
    When creating an author object
    And creating an book object
    Then error

    Examples:
      | title    | isbn                      | firstname | lastname    | email                |
      | Krzyzacy | 978-3-16-410-0            | Henryk    | Sienkiewicz | example@example.com  |
      | Lalka    | 9783161484100123132       | Boleslaw  | Prus        | example2@example.com |
      | Krzyzacy | asdasdbaasv               | Henryk    | Sienkiewicz | example@example.com  |
      | Lalka    | None                      | Boleslaw  | Prus        | example2@example.com |
      | Krzyzacy | "abc"                     | Henryk    | Sienkiewicz | example@example.com  |
      | Lalka    | !@#!@#!@#!@$              | Boleslaw  | Prus        | example2@example.com |
      | Lalka    | 9 7 8 c 5 x 6 1 a 9 0 9 4 | Boleslaw  | Prus        | example2@example.com |

  @book @en
  Scenario Outline: Create a new book - failure because of the author
    Given title is <title>
    And ISBN is <isbn>
    And author is <author>
    When creating an book object
    Then error

    Examples:
      | title    | isbn              | author      |
      | Krzyzacy | 978-3-16-148410-0 | Sienkiewicz |
      | Krzyzacy | 978-3-16-148410-0 | #!$@#$!     |
      | Krzyzacy | 978-3-16-148410-0 | 123235234   |
      | Krzyzacy | 978-3-16-148410-0 |             |