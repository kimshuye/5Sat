*** Settings ***
Documentation       Simple example using SeleniumLibrary.
Library             SeleniumLibrary
Resource            resource_google.robot


*** Variables ***



*** Test Cases ***

ค้นหาด้วยคำว่า ${find_word} ต้องเจอคำว่า ป้าแต๋น และเจอคำว่า ${result2}
    เข้า Google
    พิมพ์คำค้นหาว่า ${find_word}
    กดปุ่มค้นหา
    หาคำว่า ${result1} และ ${result2} จากการค้นหา


*** Keywords ***


เข้า Google
    Open Browser                ${URL}      ${BROWSER}

พิมพ์คำค้นหาว่า ${find_word}
    InputText                   name=q      ${find_word}

กดปุ่มค้นหา
    Press Keys                  name=q      ENTER


หาคำว่า ${result1} และ ${result2} จากการค้นหา
    # Wait Until Page Contains    ${result1}
    # Wait Until Page Contains    ${result2}
    Page Should Contain         ${result1}
    Page Should Contain         ${result2}
    Close Browser




