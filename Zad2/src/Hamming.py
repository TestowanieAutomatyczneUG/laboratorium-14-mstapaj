class Hamming:
    def distance(self, first, second):
        difference = 0
        if isinstance(first, str) and isinstance(second, str):
            if len(first) == len(second):
                for i in range(len(first)):
                    if first[i] != second[i]:
                        difference += 1
                return difference
            else:
                return "Wrong length of genotypes"
        else:
            return "Genotypes are the wrong type"
