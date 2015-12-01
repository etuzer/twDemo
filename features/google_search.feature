#encoding: UTF-8

Feature:
  In order to find web page
  As a random user
  I want make a google search

  Scenario: Search in google
    Given i go to google
    When i search for fenerbahçe
    Then i see fenerbahçe in the result


  Scenario: Search in google
    Given i go to "http://www.google.com"
    When i search for "Fenerbahçe"
    Then i see "Fenerbahçe" in the result


  Scenario: Search in google
    Given i go to "http://www.google.com"
    When i search for "Galatasaray"
    Then i see "Galatasaray" in the result

  Scenario: Search in google
    Given i go to "http://www.google.com"
    When i search for "Trabzonspor"
    Then i see "Trabzonspor" in the result

    Scenario Outline: Search teams in google
      Given i go to "<site>"
      When i search for "<team>"
      Then i see "<result>" in the result

      Examples:
      |site                 |team       |result|
      |http://www.google.com|Fenerbahçe |2 - 0|
      |http://www.google.com|Galatasaray|2 - 2|
      |http://www.google.com|Trabzonspor|2 - 0|
      |http://www.google.com|Besıktas   |0 - 2|
      |http://www.google.com|Real madrid|0 - 2|
      |http://www.google.com|Karsıyaka   |nil  |

