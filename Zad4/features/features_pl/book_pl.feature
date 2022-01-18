# language: pl

Funkcja: Book

  @book @pl
  Szablon scenariusza: Create a new book - success
    Mając title is <title>
    Oraz ISBN is <isbn>
    Oraz author firstname is <firstname>
    Oraz author lastname is <lastname>
    Oraz author email is <email>
    Kiedy creating an author object
    Oraz creating an book object
    Wtedy book is created

    Przykłady:
      | title    | isbn                      | firstname | lastname    | email                |
      | Krzyzacy | 978-3-16-148410-0         | Henryk    | Sienkiewicz | example@example.com  |
      | Lalka    | 9783161484100             | Boleslaw  | Prus        | example2@example.com |
      | Krzyzacy | 978-8 3-718 1-5 10-2      | Henryk    | Sienkiewicz | example@example.com  |
      | Lalka    | 978-83-7181-510-2         | Boleslaw  | Prus        | example2@example.com |
      | Lalka    | 9 7 8 1 5 6 6 1 9 9 0 9 4 | Boleslaw  | Prus        | example2@example.com |

  @book @pl
  Szablon scenariusza: Create a new book - failure because of the book
    Mając title is <title>
    Oraz ISBN is <isbn>
    Oraz author firstname is <firstname>
    Oraz author lastname is <lastname>
    Oraz author email is <email>
    Kiedy creating an author object
    Oraz creating an book object
    Wtedy error

    Przykłady:
      | title | isbn                      | firstname | lastname    | email                |
      |       | 978-3-16-148410-0         | Henryk    | Sienkiewicz | example@example.com  |
      |       | 9783161484100             | Boleslaw  | Prus        | example2@example.com |
      |       | 978-8 3-718 1-5 10-2      | Henryk    | Sienkiewicz | example@example.com  |
      |       | 978-83-7181-510-2         | Boleslaw  | Prus        | example2@example.com |
      |       | 9 7 8 1 5 6 6 1 9 9 0 9 4 | Boleslaw  | Prus        | example2@example.com |

  @book @pl
  Szablon scenariusza: Create a new book - failure because of the book ISBN
    Mając title is <title>
    Oraz ISBN is <isbn>
    Oraz author firstname is <firstname>
    Oraz author lastname is <lastname>
    Oraz author email is <email>
    Kiedy creating an author object
    Oraz creating an book object
    Wtedy error

    Przykłady:
      | title    | isbn                      | firstname | lastname    | email                |
      | Krzyzacy | 978-3-16-410-0            | Henryk    | Sienkiewicz | example@example.com  |
      | Lalka    | 9783161484100123132       | Boleslaw  | Prus        | example2@example.com |
      | Krzyzacy | asdasdbaasv               | Henryk    | Sienkiewicz | example@example.com  |
      | Lalka    | None                      | Boleslaw  | Prus        | example2@example.com |
      | Krzyzacy | "abc"                     | Henryk    | Sienkiewicz | example@example.com  |
      | Lalka    | !@#!@#!@#!@$              | Boleslaw  | Prus        | example2@example.com |
      | Lalka    | 9 7 8 c 5 x 6 1 a 9 0 9 4 | Boleslaw  | Prus        | example2@example.com |

  @book @pl
  Szablon scenariusza: Create a new book - failure because of the author
    Mając title is <title>
    Oraz ISBN is <isbn>
    Oraz author is <author>
    Kiedy creating an book object
    Wtedy error

    Przykłady:
      | title    | isbn              | author      |
      | Krzyzacy | 978-3-16-148410-0 | Sienkiewicz |
      | Krzyzacy | 978-3-16-148410-0 | #!$@#$!     |
      | Krzyzacy | 978-3-16-148410-0 | 123235234   |
      | Krzyzacy | 978-3-16-148410-0 |             |