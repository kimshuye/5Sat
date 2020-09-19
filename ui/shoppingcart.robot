*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://T.BD

*** Test Cases ***
สั่งซื้อของเล่นจัดส่งโดย Kerry ชำระเงินด้วยบัตรเครดิตสำเร็จ แล้วเลือกรับ Notification ผ่าน SMS
    ค้นหาของเล่นด้วยอายุและเพศ
    เลือกของเล่นที่ต้องการสั่งซื้อ
    แสดงรายละเอียดของเล่น
    เลือกจำนวนและกดสั่งซื้อ
    แสดงรายการสั่งซื้อในตะกร้าสินค้าและยืนยันการสั่งซื้อ

*** Keywords ***
ค้นหาของเล่นด้วยอายุและเพศ
    Open Browser    ${URL}    chrome
    Select From List By Label    id=Select_age    Over 8
    Select From List By Label    id=Select_gender    Neutral
    Click Element    id=Button_search
    
เลือกของเล่นที่ต้องการสั่งซื้อ
    Element Contains   id=result_item_name1    Twilight Board Game
    Click Element    id=result_item_name1

แสดงรายละเอียดของเล่น
