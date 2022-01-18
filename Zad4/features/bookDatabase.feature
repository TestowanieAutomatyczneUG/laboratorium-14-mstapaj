Feature: Book Database


  @bookdb @en @mock
  Scenario: Get all books from database - empty
    Given database
    And mock function get_all_books, return []
    When call function get all books
    Then function return []

  @bookdb @en @mock
  Scenario: Get all books from database
    Given database
    And mock function get_all_books, return ['Krzyzacy', 'Lalka']
    When call function get all books
    Then function return ['Krzyzacy', 'Lalka']

  @bookdb @en @mock
  Scenario: Get book by id from database
    Given database
    And mock function get_book_by_id, return {'title': 'Lalka', 'author': 'Boleslaw Prus', 'isbn': '978-83-7181-510-2'}
    When call function get book by id
    Then function return {'title': 'Lalka', 'author': 'Boleslaw Prus', 'isbn': '978-83-7181-510-2'}

  @bookdb @en @mock
  Scenario: Get book by id from database - not found
    Given database
    And mock function get_book_by_id, return Book not found
    When call function get book by id
    Then function return Book not found

  @bookdb @en @mock
  Scenario: Get author by name from database
    Given database
    And mock function get_author_by_name, return {'firstname': 'Boleslaw', 'lastname': 'Prus', 'email': 'example@example.com'}
    When call function get author by name
    Then function return {'firstname': 'Boleslaw', 'lastname': 'Prus', 'email': 'example@example.com'}

  @bookdb @en @mock
  Scenario: Get author by name from database - not found
    Given database
    And mock function get_author_by_name, return Author not found
    When call function get author by name
    Then function return Author not found

  @bookdb @en @mock
  Scenario: Add book to database
    Given database
    And mock function add_book, return The book has been added
    When call function add book
    Then function return The book has been added

  @bookdb @en @mock
  Scenario: Edit book in database
    Given database
    And mock function edit_book, return The book has been edited
    When call function edit book
    Then function return The book has been edited

  @bookdb @en @mock
  Scenario: Edit book in database - not found
    Given database
    And mock function edit_book, return Book not found
    When call function edit book
    Then function return Book not found

  @bookdb @en @mock
  Scenario: Delete book in database
    Given database
    And mock function delete_book, return The book has been deleted
    When call function delete book
    Then function return The book has been deleted

  @bookdb @en @mock
  Scenario: Delete book in database - not found
    Given database
    And mock function delete_book, return Book not found
    When call function delete book
    Then function return Book not found