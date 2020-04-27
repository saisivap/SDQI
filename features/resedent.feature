Feature:Resident
Scenario: Add resident to a project

  Given I am a resident
  And I am signed in
  Then I should see a link complaint
#  Given I an complaint
  And I should add complaint
  And I should see Complaint was successfully created
  And I should see the notification
  And I should see shared complaint
  And I should see search compliant
  And i should see description,Ticket Number