# language: pl

Funkcja: Author

  @author @pl
  Szablon scenariusza: Create a new author - success
    Mając firstname is <firstname>
    Oraz lastname is <lastname>
    Oraz email is <email>
    Kiedy creating an author object
    Wtedy author is created

    Przykłady:
      | firstname | lastname | email                |
      | Jan       | Kowalski | example@example.com  |
      | Ola       | Kot      | example22@examplecom |
      | Michal    | Nowak    | exa@example          |

  @author @pl
  Szablon scenariusza: Create a new author - failure
    Mając firstname is <firstname>
    Oraz lastname is <lastname>
    Oraz email is <email>
    Kiedy creating an author object
    Wtedy error

    Przykłady:
      | firstname | lastname | email               |
      | Jan       | Kowalski | example.com         |
      | Ola       |          | example@example.com |
      |           | Nowak    | example@example.com |
      |           |          | example.com         |
      | Ola       |          |                     |
      |           | Nowak    |                     |
      |           |          |                     |
