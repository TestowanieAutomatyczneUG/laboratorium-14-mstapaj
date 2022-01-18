class Author:
    def __init__(self, firstname, lastname, email):
        if not isinstance(firstname, str) or firstname == '':
            raise TypeError("Imię musi być typu string")
        if not isinstance(lastname, str) or lastname == '':
            raise TypeError("Nazwisko musi być typu string")
        if not isinstance(email, str) or email == '':
            raise TypeError("Email musi być typu string")
        if "@" not in email:
            raise ValueError("Email musi zawierać @")
        self.firstname = firstname
        self.lastname = lastname
        self.email = email
