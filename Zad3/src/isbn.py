class ISBN:
    def check_isbn(self, number):
        data = []
        for i in list(number):
            if str(i).isnumeric():
                data.append(int(i))
            elif str(i) != "-" and str(i) != " ":
                return False

        if len(data) == 13:
            for i in range(len(data) - 1):
                if i % 2 != 0:
                    data[i] *= 3

        else:
            return False
        checksum = (10 - ((sum(data[:12])) % 10)) % 10
        return data[12] == checksum


temp = ISBN()
print(temp.check_isbn('978-3-16-148410-0'))
print(temp.check_isbn('978-83-7181-510-2 '))
