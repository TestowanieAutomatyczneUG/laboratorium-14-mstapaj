Feature: Hamming distance calculator
  Zadaniem klasy jest sprawdzenie czy kalkulator odległości hamminga działa poprawnie. Kalkulator powininen zwrócić
  różnicę genów między genotypem A i B.

  Scenario: Two genotypes which are empty, result 0
    Given genotype 1 is empty
    And genotype 2 is empty
    When calculate the hamming distance
    Then the result is 0

  Scenario: Two genotypes which are "A" and "A", result 0
    Given genotype 1 is "A"
    And genotype 2 is "A"
    When calculate the hamming distance
    Then the result is 0

  Scenario: Two genotypes which are "G" and "T", result 1
    Given genotype 1 is "G"
    And genotype 2 is "T"
    When calculate the hamming distance
    Then the result is 1

  Scenario: Two genotypes which are "GGACTGAAATCTG" and "GGACTGAAATCTG", result 0
    Given genotype 1 is "GGACTGAAATCTG"
    And genotype 2 is "GGACTGAAATCTG"
    When calculate the hamming distance
    Then the result is 0

  Scenario: Two genotypes which are "GGACGGATTCTG" and "AGGACGGATTCT", result 9
    Given genotype 1 is "GGACGGATTCTG"
    And genotype 2 is "AGGACGGATTCT"
    When calculate the hamming distance
    Then the result is 9

  Scenario: Two genotypes which are "AATG" and "AAA", result "Wrong length of genotypes"
    Given genotype 1 is "AATG"
    And genotype 2 is "AAA"
    When calculate the hamming distance
    Then the result is Wrong length of genotypes

  Scenario: Two genotypes which are "ATA" and "AGTG", result "Wrong length of genotypes"
    Given genotype 1 is "ATA"
    And genotype 2 is "AGTG"
    When calculate the hamming distance
    Then the result is Wrong length of genotypes

  Scenario: Two genotypes which are "" and "G", result "Wrong length of genotypes"
    Given genotype 1 is empty
    And genotype 2 is "G"
    When calculate the hamming distance
    Then the result is Wrong length of genotypes

  Scenario: Two genotypes which are "G" and "", result "Wrong length of genotypes"
    Given genotype 1 is "G"
    And genotype 2 is empty
    When calculate the hamming distance
    Then the result is Wrong length of genotypes

  Scenario: Two genotypes which are integer, result "Genotypes are the wrong type"
    Given genotype 1 is 2
    And genotype 2 is 3
    When calculate the hamming distance
    Then the result is Genotypes are the wrong type

  Scenario: Two genotypes which are float, result "Genotypes are the wrong type"
    Given genotype 1 is 3.13
    And genotype 2 is 2.11
    When calculate the hamming distance
    Then the result is Genotypes are the wrong type

  Scenario: Two genotypes which are negative integer, result "Genotypes are the wrong type"
    Given genotype 1 is -2
    And genotype 2 is -3
    When calculate the hamming distance
    Then the result is Genotypes are the wrong type

  Scenario: Two genotypes which are negative float, result "Genotypes are the wrong type"
    Given genotype 1 is -2.11
    And genotype 2 is -3.44
    When calculate the hamming distance
    Then the result is Genotypes are the wrong type
