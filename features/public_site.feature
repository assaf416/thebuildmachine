Feature: Public site tests
  
  Scenario: Langind page
    When I go to the welcome page
    Then I should see "Welcome"


  Scenario: User login
    When I visit the login page
    And I fill "demo@gmail.com" in email
    And I fill "secret" in password
    And I submit
    Then I should be in "my profile" page


   
    