Feature: Login tests
  
  Scenario: Successfull login
    Given I have a developer user with name "assaf" and password "secret"
    When I go to the login page
    And I fill user with "assaf"
    And I fill pwd with "secret"
    And I Submit
    Then I should be on the user page
    And I should see "Hello "


  Scenario: Failed login
    Given I have a developer user with name "assaf" and password "secret"
        When I go to the login page
        And I fill user with "assaf"
        And I fill pwd with "badsecret"
        And I Submit
        Then I should be on the login page
        And I should see "bad user or pasword" on the error pane



   
    