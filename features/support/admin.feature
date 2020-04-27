Feature:Admin
Scenario: Admin some functions

    Given I am a admin
    And I am sign in
    Then I should see a link of solve
    And I should see all compliants
    And I should see Maintenance and able to create
    And I should see shared and private maintenance click on shared
    And I can also see the residents
    And I can able to see my email id their

#  Given I an complaint
#    And I should click on solve