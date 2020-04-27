Given("I am a admin") do
  # pending # Write code here that turns the phrase above into concrete actions
  @user=FactoryBot.create :resident1
end
Given("I am sign in") do
  visit '/users/sign_in'
  # save_and_open_page
  fill_in 'Email',with: @user.email
  fill_in 'Password',with: @user.password
  click_on 'Log in'
  # save_and_open_page
end
Then("I should see a link of solve") do
  # pending # Write code here that turns the phrase above into concrete actions

end

Then("I should click on solve") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should click on solve") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see all compliants") do
  # pending # Write code here that turns the phrase above into concrete actions
  page.has_content?('All Compliants')
  click_on 'All Complaints'
  # save_and_open_page
end
Then("I should see Maintenance and able to create") do
  # pending # Write code here that turns the phrase above into concrete actions
  page.has_content?('Maintenance')
  click_on 'Maintenance'
  # save_and_open_page
end
Then("I should see shared and private maintenance click on shared") do
  page.has_content?('Shared')
  page.has_content?('Private')
  click_on 'Private'
  save_and_open_page
end

