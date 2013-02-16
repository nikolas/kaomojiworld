Feature: Users can follow each other
  Scenario: User follows someone
    When I visit a user's page
    And I click on 'Follow'
    Then I should be following that user
  Scenario: User unfollows someone
    When I visit a user's page that I am following
    And I click on 'Unfollow'
    Then I should not be following that user
