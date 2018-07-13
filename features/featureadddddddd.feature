@Regression
Feature: test-feature

  Background:
    Given User prints comment "User navigates to the Calculator page"
    When User navigates to the Calculator page with url "http://juliemr.github.io/protractor-demo/"
    Then Page title is equal to "Super Calculator"

  Scenario Outline: 1 Verify calculator
    When User enters <first> in field "[ng-model='first']"
    When User enters <second> in field "[ng-model='second']"
    When User selects "[value='ADDITION']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Go Button "#gobutton" is displayed
    Then Go Button "#gobutton" with text "Go!" is displayed
    Then Result "#gobutton" contains "Go!" text
    Then Result "h2" is equal to "<output>"

    Examples:

      | first | second | output |
      | 59    | 456    | 515    |
      | 78    | 951    | 1029   |
      | 6578  | 627    | 7205   |