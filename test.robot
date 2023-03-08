*** Settings ***
Library     Selenium2Library


***Variables***
${Browser}           chrome
${URL}               https://aurora-front.netforce.co.th/

*** Test Cases ***
Enter Text Into Field
    Open Browser    ${URL}    ${BROWSER}
    sleep           3s
   
Set Input Value
    Execute JavaScript    document.querySelectorAll("input[type='text']")[0].value = '3013917'
    sleep           3s
Set Password Value
    Execute JavaScript    document.querySelectorAll("input[type='password']")[0].value = 'Aurora123'
    sleep           3s 
click button
   Click Button       class=btn btn-primary btn-lg
   Page Should Contain  
  