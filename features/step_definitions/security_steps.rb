Given("I am a Security") do

  @user=FactoryBot.create :resident2
end

Given("I am sign in as security") do

  visit '/users/sign_in'

  fill_in 'Email',with: @user.email
  fill_in 'Password',with: @user.password
  click_on 'Log in'
  # save_and_open_page
end
Given("I should see hello security") do
  # pending # Write code here that turns the phrase above into concrete actions
  page.has_content?('Hello security')
end
Given("I can also see the residents") do
  # pending # Write code here that turns the phrase above into concrete actions
  page.has_content?('Residents')
  click_on 'Residents'
  # save_and_open_page
end
Given("I can able to see my email id their") do
  # pending # Write code here that turns the phrase above into concrete actions
  page.has_content?(@user.email)
  save_and_open_page
end

