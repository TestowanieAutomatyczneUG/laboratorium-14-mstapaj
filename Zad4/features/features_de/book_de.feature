# language: de

Funktionalität: Book

  @book @de
  Szenariogrundriss: Create a new book - success
    Angenommen title is <title>
    Und ISBN is <isbn>
    Und author firstname is <firstname>
    Und author lastname is <lastname>
    Und author email is <email>
    Wenn creating an author object
    Und creating an book object
    Dann book is created

    Beispiele:
      | title    | isbn                      | firstname | lastname    | email                |
      | Krzyzacy | 978-3-16-148410-0         | Henryk    | Sienkiewicz | example@example.com  |
      | Lalka    | 9783161484100             | Boleslaw  | Prus        | example2@example.com |
      | Krzyzacy | 978-8 3-718 1-5 10-2      | Henryk    | Sienkiewicz | example@example.com  |
      | Lalka    | 978-83-7181-510-2         | Boleslaw  | Prus        | example2@example.com |
      | Lalka    | 9 7 8 1 5 6 6 1 9 9 0 9 4 | Boleslaw  | Prus        | example2@example.com |

  @book @de
  Szenariogrundriss: Create a new book - failure because of the book
    Angenommen title is <title>
    Und ISBN is <isbn>
    Und author firstname is <firstname>
    Und author lastname is <lastname>
    Und author email is <email>
    Wenn creating an author object
    Und creating an book object
    Dann error

    Beispiele:
      | title | isbn                      | firstname | lastname    | email                |
      |       | 978-3-16-148410-0         | Henryk    | Sienkiewicz | example@example.com  |
      |       | 9783161484100             | Boleslaw  | Prus        | example2@example.com |
      |       | 978-8 3-718 1-5 10-2      | Henryk    | Sienkiewicz | example@example.com  |
      |       | 978-83-7181-510-2         | Boleslaw  | Prus        | example2@example.com |
      |       | 9 7 8 1 5 6 6 1 9 9 0 9 4 | Boleslaw  | Prus        | example2@example.com |

  @book @de
  Szenariogrundriss: Create a new book - failure because of the book ISBN
    Angenommen title is <title>
    Und ISBN is <isbn>
    Und author firstname is <firstname>
    Und author lastname is <lastname>
    Und author email is <email>
    Wenn creating an author object
    Und creating an book object
    Dann error

    Beispiele:
      | title    | isbn                      | firstname | lastname    | email                |
      | Krzyzacy | 978-3-16-410-0            | Henryk    | Sienkiewicz | example@example.com  |
      | Lalka    | 9783161484100123132       | Boleslaw  | Prus        | example2@example.com |
      | Krzyzacy | asdasdbaasv               | Henryk    | Sienkiewicz | example@example.com  |
      | Lalka    | None                      | Boleslaw  | Prus        | example2@example.com |
      | Krzyzacy | "abc"                     | Henryk    | Sienkiewicz | example@example.com  |
      | Lalka    | !@#!@#!@#!@$              | Boleslaw  | Prus        | example2@example.com |
      | Lalka    | 9 7 8 c 5 x 6 1 a 9 0 9 4 | Boleslaw  | Prus        | example2@example.com |

  @book @de
  Szenariogrundriss: Create a new book - failure because of the author
    Angenommen title is <title>
    Und ISBN is <isbn>
    Und author is <author>
    Wenn creating an book object
    Dann error

    Beispiele:
      | title    | isbn              | author      |
      | Krzyzacy | 978-3-16-148410-0 | Sienkiewicz |
      | Krzyzacy | 978-3-16-148410-0 | #!$@#$!     |
      | Krzyzacy | 978-3-16-148410-0 | 123235234   |
      | Krzyzacy | 978-3-16-148410-0 |             |