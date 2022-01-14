Feature: ISBN calculator
  Zadaniem klasy jest sprawdzenie czy kalkulator numeru ISBN działa poprawnie. Kalkulator zwraca True gdy numer jest
  poprawny i False gdy jest niepoprawny.

  Scenario Outline: Check if ISBN number is correct
    Given number is <number>
    When we run ISBN calculator
    Then the result is <result>

    Examples:
      | number                    | result |
      | 978-3-16-148410-0         | True   |
      | 978-83-7181-510-2         | True   |
      | 9781566199094             | True   |
      | 9 7 8 1 5 6 6 1 9 9 0 9 4 | True   |
      | 978-83-7181-510-2331      | False  |
      | 978-83-81-510-2           | False  |
      | 978-83c7181a510-2         | False  |
      | 978-8 3-718 1-5 10-2      | True   |
      | 978-83-718AAAvVVC1-510-2  | False  |
      | 978-83-##@@7181!!-510-2   | False  |
      | aaaaaaaaaaccccc           | False  |
      | @@#####%%%^^&&**(())      | False  |
      | None                      | False  |
      | []                        | False  |
      | {}                        | False  |
      | "abc"                     | False  |
      | 1231241234                | False  |
      | -32121                    | False  |
      | 3.123124                  | False  |
      | -2.12312                  | False  |