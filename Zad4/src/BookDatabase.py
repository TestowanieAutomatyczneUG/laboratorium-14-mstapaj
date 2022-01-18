class BookDatabase:
    def __init__(self, books=None):
        if books is None:
            books = []
        self.books = books

    def get_all_books(self):
        pass

    def get_book_by_id(self, book_id):
        pass

    def get_author_by_name(self, name):
        pass

    def add_book(self, book):
        pass

    def edit_book(self, book_id, book):
        pass

    def delete_book(self, book_id):
        pass
