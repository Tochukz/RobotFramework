*** Settings ***

*** Variables ***
@{THINGS_VAR} =  Laptop and Mouse  Second Item  Car for sale

*** Test Cases ***
Working with List Variables - Global List
    Log  @{THINGS_VAR}[0]
    Log  @{THINGS_VAR}[1]
    Log  @{THINGS_VAR}[2]

Working with local List
    # Definging local varible list
    @{local_things} =  Set Variable  Fish in bowl  Key to office  Third object
    Log  @{local_things}[0]
    Log  @{local_things}[1]
    Log  @{local_things}[2]
