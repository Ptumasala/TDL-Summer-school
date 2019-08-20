@cucumber
Feature: Signout features

    @signout
    Scenario: Log out from Discord Web App
        Given I am on Discord login page
        And I login as user1
        And I log out from Discord App
