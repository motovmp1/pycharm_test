*** Settings ***

Documentation    Input Boxes performance
Library          Collections
Library          SeleniumLibrary




*** Variables ***


${URL}      https://demo.nopcommerce.com
${browser}      Chrome


#${URL}           https://demo.nopcommerce.com/
#${browser}       firefox

*** Test Cases ***

LoginTest

    openbrowserpathapplication
    Go To                         ${url}
    sleep                         5s
    userandpasswordapplication



*** Keywords ***

openbrowserpathapplication
    log to console      "Running Test into Windows 10"
    open browser  ${URL}    ${browser}
    maximize browser window
    sleep  4
    set selenium speed  1
    ${page_title}       get title
    log                 ${page_title}


userandpasswordapplication
    click link                    xpath://a[@class='ico-login']
    input text                    id:Email                                         vinicius.mpinho@gmail.com
    sleep                         3s
    input password                id:Password                                      Test@123
    click element                 xpath://input[@class='button-1 login-button']
    sleep                         3s
    click link                    xpath://a[@class='ico-account']
    sleep                         3s
    close browser
