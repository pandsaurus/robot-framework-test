*** Settings ***
Resource       ../_config/settings.resource

*** Keywords ***
Open google chrome browser
    Open Browser                browser=${config.chrome_browser}
    Maximize Browser Window

Power nap
    [Arguments]     ${time}=0.5s
    Sleep           ${time}