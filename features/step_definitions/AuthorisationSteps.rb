# (/^ ......... $/) is called a regular expression and is used to help programm to find your comands

Given(/^I am on Discord login page$/) do
  @pages.login.load_home_page
end

And(/^I login as (.*)/) do |user|
  file = YAML.load_file('config/test_data.yml')
  case user
  when 'user1' then
    $user_manager.current_user = 'user1'
    @pages.login.fill_form(file['user1'])
    sleep 5
    when 'user2' then
    $user_manager.current_user = 'user2'
    @pages.login.fill_form(file['user2'])
    else
    raise 'Login is not correct!'
    end
  end
  
  Then (/^I see that login was successful$/) do
    @pages.home.homeButton.visible?
    @pages.home.friendsTab.visible?
    @pages.home.userSettings.visible?
  end

  And(/^I click on skip the tutorial/) do
    if @pages.login.skipButton.visible?
      @pages.login.skipButton.click
    else
      puts 'Skip button is invisible'
    end
  end