Feature: navigate to sky.com page
  Scenario: Sam is going to login
    Given I am on sky.com home page
    And I login
    Then I should be logged in successfully

  Scenario: sam is at my sky page and still logged in
    Given I am at mysky page
    Then I should be logged in successfully

  Scenario: sam is at shop page and still logged in
    Given I am at shop page
    Then I should be logged in successfully


