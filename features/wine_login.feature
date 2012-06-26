Feature: navigate to wine browser and buy white wine
  Scenario: login into wine site
    Given I goto wine site and login
    And I enter  my dob
    Then I should be on home page


Scenario:  navigate to sky.com myaccount page
  Given Iam on sky ID login page
    When I enter by user details
    And I goto my account page
    Then I should see my bill

