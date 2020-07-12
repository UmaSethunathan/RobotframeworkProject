*** Settings ***
Library          SeleniumLibrary
Library          Collections
Variables       ../PageObjects/locators.py

*** Keywords ***
[Documentation] Adds values to the end of list

website
    [Arguments]     ${url}  ${Browsername}
    open browser    ${url}  ${Browsername}
    Maximize Browser Window

Enter Searchcode
    [Arguments]     ${postcode}
    Input Text      ${txt_postcode}     ${postcode}

Click Submit
    click button    ${Btn_submit}

Entering the cusine name
    [Arguments]     ${cusine_name}
    Input Text      ${txt_Search_dish}      ${cusine_name}

click Search
    click button    ${Btn_Search}

Getting Text from text
    ${var} =    Get Text    ${count}
    Log To Console      ${var}

Resturant in our area
    @{list} =   Create List
    @{wholeList} =  Get WebElements     ${NameList}
    FOR    ${L}   IN      @{wholeList}
        ${text} =   Get Text    ${L}
        Log To Console     ${text}
        append to list  ${list}     ${text}
    END
    log to console  -----------------------------
    log To Console  Resturant in area AR51 1aa
    log to console  -----------------------------
    log to console  ${list}


