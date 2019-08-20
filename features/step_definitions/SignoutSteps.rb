# (/^ ......... $/) is called a regular expression and is used to help programm to find your comands

  Then (/^I log out from Discord App$/) do
    @pages.home.userSettings.visible?
    @pages.home.userSettings.click
    @pages.home.logOutButton.click
    @pages.home.logOutConfirm.click
    @pages.login.email.visible?
    @pages.login.password.visible?
  end