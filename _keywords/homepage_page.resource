*** Settings ***
Resource       ../_config/settings.resource

*** Keywords ***
login page is open
    Go To           ${url.landingPage}
    Sleep           1s
    Click Element   ${landing_page.signInLink}

user entered ${uname_verdict} username and ${pwd_verdict} password
    Input Text         ${login_modal.unameTxtBar}    ${${uname_verdict}_acc.uname}
    Input Password     ${login_modal.pwdTxtBar}      ${${pwd_verdict}_acc.pwd}

user entered password only
    Input Password     ${login_modal.pwdTxtBar}      ${valid_acc.pwd}

user entered username only
    Input Password     ${login_modal.pwdTxtBar}      ${valid_acc.pwd}

login button pressed
    Click Element      ${login_modal.loginBtn}

user should be logged in
    Wait Until Page Contains Element    ${results.successLogin}
    Power nap
    Capture Element Screenshot          ${results.successLogin}

wrong credentials message is displayed
    Wait Until Page Contains Element    ${login_modal.errMsg.wrongLogin}
    Power nap
    Capture Element Screenshot          ${login_modal.errMsg.wrongLogin}

missing credentials message is displayed
    Wait Until Page Contains Element    ${login_modal.errMsg.missingLogin}
    Power nap
    Capture Element Screenshot          ${login_modal.errMsg.missingLogin}

