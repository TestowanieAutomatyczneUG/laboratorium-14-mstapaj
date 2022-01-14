Feature: FizzBuzz
  Zadaniem klasy jest sprawdzenie czy program FizzBuzz działa poprawnie, czyli jeśli liczba jest podzielna przez 3
  wyświetla Fizz, jeśli jest podzielna przed 5 wyświetla Buzz, a jeśli jest podzielna przez 3 i przez 5 wyświetla
  FizzBuzz. W innym przypadku program powininen zwrócić podaną liczbę.

  Scenario Outline: number 3, should return Fizz
    Given FizzBuzz game
    When I input <data>
    Then I get <result>

    Examples:
      | data   | result                       |
      | 3      | Fizz                         |
      | 5      | Buzz                         |
      | 15     | FizzBuzz                     |
      | 17     | 17                           |
      | 13.123 | 13.123                       |
      | -17    | -17                          |
      | -35    | Buzz                         |
      | -33    | Fizz                         |
      | -45    | FizzBuzz                     |
      | "abc"  | "Wrong type of given number" |
      | "31"   | "Wrong type of given number" |
      | []     | "Wrong type of given number" |
      | {}     | "Wrong type of given number" |
      | None   | "Wrong type of given number" |
