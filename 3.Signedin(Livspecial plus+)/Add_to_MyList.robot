############################################################################
# This is an intellectual property owned by SPNI.                          #
# Restricted Distribution                                                  #
# Title: AFS Scriptd                                                       #
# Description:                                                             #
# Owned by: Satyajit                                                       #
# Reviewed By: Anshul Gupta                                                #
#                                                                          #
#############################################################################


*** Settings ***
Library           AppiumLibrary    #Section to import libraries and other dependent modules
Library           OperatingSystem
Library           String
Library           Process
#Library           ${EXECDIR}/Lib/Android/SonyLIV_Python_Implementations.py
Library           ${EXECDIR}/Lib/Android/search.py
Resource          ${EXECDIR}/Res/Android/GenericFunction.robot
Resource          ${EXECDIR}/Res/Android/web_res.robot
Variables         ${EXECDIR}/VariableFiles/Android/Config.py

*** Test Cases ***

### ----> IN Tetcase NO.20 1st You need to Activate Tv from WEB Or Mobile Manually By Typing the Shown Code On AFS. (OR) Before Executing Subscribed_user.robot You need to Signin Manually On TV.Thank You.

TC_151 : Signin Subscribed User for Validate Add to my list
    [Tags]  pass
    ${img_no}  set variable  151
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    #VERIFY SPOTLIGHT
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no}

TC_152 : Validate Add to my list Button On Spot light
    [Tags]  pass
    ${img_no}  set variable  152
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10

    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    #VERIFY SPOTLIGHT


    VALIDATE ADD TO MY LIST BUTTON ON SPOTLIGHT 
    Capture Page Screenshot
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no}

TC_153 : ADD CONTENTS TO MY LIST BUTTON ON SPOTLIGHT On Spot light
    [Tags]  pass
    ${img_no}  set variable  153
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    #VERIFY SPOTLIGHT
    ADD CONTENTS TO MY LIST BUTTON ON SPOTLIGHT
    Capture Page Screenshot
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no}

TC_154 :Remove Contents From My list
    [Tags]  pass
    ${img_no}  set variable  154
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT
    ADD CONTENTS TO MY LIST BUTTON ON SPOTLIGHT
    REMOVE CONTENTS FROM MY LIST
    Capture Page Screenshot
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no}


TC_161 : Click HiddenIndia and Pressing Back and verify
    [Tags]  pass
    ${img_no}  set variable  '161'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  hidden  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${HIDDEN_INDIA}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 

TC_162 : Click SPY_IN_THE_WILD and Pressing Back and verify
    [Tags]  pass
    ${img_no}  set variable  '162'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  spy in  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${SPY_IN_THE_WILD}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 

TC_163 : Click DEADLY and Pressing Back and verify
    [Tags]  pass
    ${img_no}  set variable  '163'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  DEAD  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${DEADLY}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 

TC_164 : Click SECRET_OF_EVERYTHINGS and Pressing Back and verify
    [Tags]  pass
    ${img_no}  set variable  '164'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  SECRET  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${SECRET_OF_EVERYTHINGS}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 

TC_165 : Click CITY_IN_THE_SKY and Pressing Back and verify
    [Tags]  pass
    ${img_no}  set variable  '165'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  CITY  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${CITY_IN_THE_SKY}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 

TC_166 : Click LIFE_OF_THE_LEASH and Pressing Back and verify
    [Tags]  pass
    ${img_no}  set variable  '166'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  Leash  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${LIFE_OF_THE_LEASH}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 

TC_167 : Click HOTEL_ARMADILLO and Pressing Back and verify
    [Tags]  pass
    ${img_no}  set variable  '167'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  Hotel  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${HOTEL_ARMADILLO}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 

TC_168 : Click ANIMAL_BABIES_1ST_YEAR and Pressing Back and verify
    [Tags]  pass
    ${img_no}  set variable  '168'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  ANIMA  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${ANIMAL_BABIES_1ST_YEAR}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 

TC_169 : Click TRUST_ME_I_AM_A_DOCTOR and Pressing Back and verify
    [Tags]  now
    ${img_no}  set variable  '169'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  Trust  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${TRUST_ME_I_AM_A_DOCTOR}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 

TC_170 : Click SNOW_CAT and Pressing Back and verify
    [Tags]  now
    ${img_no}  set variable  '170'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  SNOW  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${SNOW_CAT}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 

TC_171 : Click NATURES_GREATEST_DANCERS and Pressing Back and verify
    [Tags]  now
    ${img_no}  set variable  '171'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  Great  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${NATURES_GREATEST_DANCERS}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 


TC_172 : Click SECRET_LIFE and Pressing Back and verify
    [Tags]  now
    ${img_no}  set variable  '172'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  secr  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${SECRET_LIFE}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 


TC_173 : Click BLUE_PLANET and Pressing Back and verify
    [Tags]  now
    ${img_no}  set variable  '173'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  BLUE  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${BLUE_PLANET}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 


TC_174 : Click WATERHOLE and Pressing Back and verify
    [Tags]  now
    ${img_no}  set variable  '174'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  Water  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${WATERHOLE}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 


TC_175 : Click THE_SECRET_LIFE_OF_TWINS and Pressing Back and verify
    [Tags]  now
    ${img_no}  set variable  '175'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  Secret  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${THE_SECRET_LIFE_OF_TWINS}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 


TC_176 : Click INSIDE_THE_FACTORY and Pressing Back and verify
    [Tags]  now
    ${img_no}  set variable  '176'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  Inside  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${INSIDE_THE_FACTORY}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST

    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 


TC_177 : Click LIFE_IN_AIR and Pressing Back and verify
    [Tags]  now
    ${img_no}  set variable  '177'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  air  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${LIFE_IN_AIR}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 


TC_178 : Click PLANET_EARTH and Pressing Back and verify
    [Tags]  now
    ${img_no}  set variable  '178'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  Planet  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${PLANET_EARTH}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 


TC_179 : Click FOOD_DELECIOUS and Pressing Back and verify
    [Tags]  now
    ${img_no}  set variable  '179'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  FOOD  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${FOOD_DELECIOUS}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST
    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 


TC_180 : Click SECRET_OF_SKINS and Pressing Back and verify
    [Tags]  now
    ${img_no}  set variable  '180'
    Set Global Variable  ${img_no}
    Launch Application
    Builtin.Sleep  10
    ENABLING LEFT MENU
    SIGNIN MANUALLY BY MOBILE FOR SUBSCRIBED
    SELECT 1ST USER IN MULTIPROFILE
    ENTER PARENTAL PIN  ${PIN}  ${TEST_DEVICE}
    Builtin.Sleep  10
    VERIFY SPOTLIGHT

    OPENING SEARCH FIELD
    run keyword  Search_the_content  SECRET  ${TEST_DEVICE}
    log to console  Search found...
    CHECK THIS CONTENT PRESENT  ${SECRET_OF_SKINS}
    Builtin.Sleep  10
    ADD CONTENTS TO MY LIST

    Close Application
    [Teardown]  run keyword if test failed  TEST TEARDOWN  ${img_no} 

