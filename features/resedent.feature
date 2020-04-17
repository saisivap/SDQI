Feature:Resident
Scenario: Add resident to a project

  Given I am a resident
  And I am signed in
  Then I should see a link complaint
#  Given I an complaint
  And I should add complaint