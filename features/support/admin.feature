Feature:Admin
Scenario: Add admin to a project

    Given I am a admin
    And I am sign in
    Then I should see a link of solve
    And I should see all compliants
    And I should see Maintenance and able to create

#  Given I an complaint
#    And I should click on solve