@cucumber
Feature: Call features

    @call
    Scenario: Make a 30 second Call With Another User
        Given I am on Discord login page
        And I login as user1
        Then I clean the direct message list
        And I Start a New Chat with André
        And I Start a 30 Second Voice Call
