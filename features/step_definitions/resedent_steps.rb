Given(/^I am a resident$/) do
  @user=FactoryBot.create :resident
end
Given(/^I am signed in$/) do
  visit '/users/sign_in'
  # save_and_open_page
  fill_in 'Email',with: @user.email
  fill_in 'Password',with: @user.password
  click_on 'Log in'
  # save_and_open_page
end

Then("I should see a link complaint") do
  # pending # Write code here that turns the phrase above into concrete actions
  page.has_content?('Complaint')
  click_on 'Complaint'
  # save_and_open_page
end
# Given("I an complaint") do
#   @com=FactoryBot.create :complaint
# end

Given("I should add complaint") do
  fill_in 'Description',with:"Please clean garbage"
  # fill_in 'block',with:"A"
  # fill_in 'type',with:"Private"
  click_on 'Create Complaint'
  # save_and_open_page
end

Then("I should see Complaint was successfully created") do
#   pending # Write code here that turns the phrase above into concrete actions
  page.has_content?(' Complaint was successfully created.')
end
Then("I should see the notification") do
  # pending # Write code here that turns the phrase above into concrete actions
  page.has_content?('(1)')
  click_on '(1)'
  # save_and_open_page
end

#
Then("I should see shared complaint") do
  # pending # Write code here that turns the phrase above into concrete actions
  page.has_content?('Shared Complaints')
  click_on 'Shared Complaints'
  # save_and_open_page
end
Then("I should see search compliant") do
  # pending # Write code here that turns the phrase above into concrete actions
  page.has_content?('Search Complaint')
  click_on 'Search Complaint'
  save_and_open_page
end
Then("i should see description,Ticket Number") do
  # pending # Write code here that turns the phrase above into concrete actions
  page.has_content?('Please clean garbage')
  page.has_content?('Ticket Number')
  save_and_open_page
end

