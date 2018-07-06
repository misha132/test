@Regression
Feature: Adding
  Background:
    Given User prints comment "User navigates to the Calculator page"
    When User navigates to the Calculator page with url "http://juliemr.github.io/protractor-demo/"
    Then Page title is equal to "Super Calculator"

  Scenario Outline : Verify calculator
    When User enters <first> in field "[ng-model='first']"
    When User enters <second> in field "[ng-model='second']"
    When User selects "[value='ADDITION']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Result "h2" is equal to "<output>"


  Examples:
  | first | second | output|
  | 0 | 1 | 1|
  | 2 | 3 | 5|
  | 10 | 20 | 21 |

