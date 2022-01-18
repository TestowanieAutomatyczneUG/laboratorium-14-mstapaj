from src.Author import Author
from src.isbn import ISBN


class Book:
    def __init__(self, title, author, isbn):
        if not isinstance(title, str) or title == '':
            raise TypeError("Tytuł musi być typu string")
        if not isinstance(author, Author):
            raise TypeError("Author musi być obiektem typu Author")
        temp = ISBN()
        if not temp.check_isbn(isbn):
            raise ValueError("ISBN musi być prawidłowy")
        self.title = title
        self.author = author
        self.isbn = isbn
