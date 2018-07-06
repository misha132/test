@Regression
Feature: test-feature

  Background:
    Given User prints comment "User navigates to the Calculator page"
    When User navigates to the Calculator page with url "http://juliemr.github.io/protractor-demo/"
    Then Page title is equal to "Super Calculator"

  Scenario 1 : 1 Verify calculator
    When User click on first field "[ng-model='first']"
    Then Attribute ".ng-untouched" of field "[ng-model='first']" is equal to ".ng-touched"


