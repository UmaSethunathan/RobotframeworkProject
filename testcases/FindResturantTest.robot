*** Settings ***
Library         SeleniumLibrary
Resource   ../resources/findResturantKeyword.robot
Suite Teardown     Close All Browsers

*** Variables ***
${Browser}       chrome
${siteurl}       https://www.just-eat.co.uk/
${areacode}      AR51 1aa
${NameCusine}    italian


*** Test Cases ***
Search Resturant at your area
    website     ${siteurl}      ${Browser}
    Enter Searchcode      ${areacode}
#    sleep  2 seconds
    Click Submit
   # sleep  2 seconds
    Entering the cusine name   ${NameCusine}
    #sleep  2 seconds
    click Search
    #sleep  2 seconds
    Getting Text from text
    sleep  2 seconds
    Resturant in our area


