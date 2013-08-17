Feature: Manage Comments
  
  Scenario: Adding Comment
    When I go to the presets page
    And I press on the first item
    Then I should see "Pizza"
    
  
  Scenario: Comments belongs to Song or Preset
    When I go to the presets page
    Then I should see "Assaf"
    And I Should not see "OOOO"

  