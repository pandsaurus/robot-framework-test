*** Settings ***
Resource       ../_config/settings.resource
Documentation  test suite containing login related test cases
Test Setup     Open google chrome browser
Test Teardown  Close Browser

*** Test Cases ***
Login with valid credentials
    [Documentation]  Logging in using valid credentials should be logged in successfully
    [Tags]  validUsername  validPassword
    Given login page is open
    When user entered valid username and valid password
    And login button pressed
    Then user should be logged in

Login with invalid username and valid password
    [Documentation]  Logging in using invalid username and valid password should not be logged in and
    ...              should display wrond credentials error message
    [Tags]  invalidUsername  validPassword
    Given login page is open
    When user entered invalid username and valid password
    And login button pressed
    Then wrong credentials message is displayed

Login with valid username and invalid password
    [Documentation]  Logging in using valid username and invalid password should not be logged in and
    ...              should display wrond credentials error message
    [Tags]  validUsername  invalidPassword
    Given login page is open
    When user entered valid username and invalid password
    And login button pressed
    Then wrong credentials message is displayed

Login with invalid credentials
    [Documentation]  Logging in using invalid username and invalid password should not be logged in and
    ...              should display wrond credentials error message
    [Tags]  invalidUsername  invalidPassword
    Given login page is open
    When user entered invalid username and invalid password
    And login button pressed
    Then wrong credentials message is displayed

Login with valid username and empty password
    [Documentation]  Logging in using valid username only should not be logged in and
    ...              should display missing credentials error message
    [Tags]  validUsername  emptyPassword
    Given login page is open
    When user entered username only
    And login button pressed
    Then missing credentials message is displayed

Login with empty username and valid password
    [Documentation]  Logging in using valid password only should not be logged in and
    ...              should display missing credentials error message
    [Tags]  emptyUsername  ValidPassword
    Given login page is open
    When user entered password only
    And login button pressed
    Then missing credentials message is displayed

Login with empty credentials
    [Documentation]  Logging in without entering any credentials should not be logged in and
    ...              should display missing credentials error message
    [Tags]  invalidUsername  invalidPassword
    Given login page is open
    When login button pressed
    Then missing credentials message is displayed