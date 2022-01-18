# language: de

Funktionalität: Author

  @author @de
  Szenariogrundriss: Create a new author - success
    Angenommen firstname is <firstname>
    Und lastname is <lastname>
    Und email is <email>
    Wenn creating an author object
    Dann author is created

    Beispiele:
      | firstname | lastname | email                |
      | Jan       | Kowalski | example@example.com  |
      | Ola       | Kot      | example22@examplecom |
      | Michal    | Nowak    | exa@example          |

  @author @de
  Szenariogrundriss: Create a new author - failure
    Angenommen firstname is <firstname>
    Und lastname is <lastname>
    Und email is <email>
    Wenn creating an author object
    Dann error

    Beispiele:
      | firstname | lastname | email               |
      | Jan       | Kowalski | example.com         |
      | Ola       |          | example@example.com |
      |           | Nowak    | example@example.com |
      |           |          | example.com         |
      | Ola       |          |                     |
      |           | Nowak    |                     |
      |           |          |                     |
