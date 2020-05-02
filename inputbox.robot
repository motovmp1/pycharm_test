*** Settings ***

Documentation    Input Boxes performance
Library          Collections
Library          SeleniumLibrary




*** Variables ***


${URL}      https://demo.nopcommerce.com
${browser}      headLessFirefox


#${URL}           https://demo.nopcommerce.com/
#${browser}       firefox

*** Test Cases ***

Open Page

    openbrowserpathapplication
    Go To                         ${url}
    sleep                         5s


Insert name user
    userandpasswordapplication

Insert the password page
    insertpassworduser

click button login page
    clickbutttonloginpage

close navigators
    closing_navigator


*** Keywords ***

openbrowserpathapplication
    log to console      "Running Test into Windows 10"
    open browser  ${URL}    ${browser}
    maximize browser window
    sleep  4
    set selenium speed  0.2
    ${page_title}       get title
    log                 ${page_title}


userandpasswordapplication
    click link                    xpath://a[@class='ico-login']
    input text                    id:Email                                         vinicius.mpinho@gmail.com
    sleep                         1s

insertpassworduser
    input password                id:Password                                      Test@123
    click element                 xpath://input[@class='button-1 login-button']
    sleep                         1s

clickbutttonloginpage
    click link                    xpath://a[@class='ico-account']
    sleep                         1s

closing_navigator
    close browser
