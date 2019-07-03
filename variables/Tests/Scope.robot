*** Settings ***
Resource  ../Resources/ScopeApp.robot

*** Variables ***
${MY_SCOPE_VAR} =  Scope variable from script file
*** Test Cases ***
Log scope variable
    Log  ${MY_SCOPE_VAR}
