*** Settings ***
Library        SeleniumLibrary
...                    timeout=10s
...                    implicit_wait=1s
...                    screenshot_root_directory=EMBED
Variables      ../_config/config.yaml
Variables      ../_config/loc_elem.yaml
Variables      ../_config/user_accounts.yaml
Resource       ../_keywords/common.resource
Resource       ../_keywords/homepage_page.resource