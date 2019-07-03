*** Settings ***

*** Variables ***
${MY_GLOBAL_VARIABLE} =  Global variable is defined in the varible section

*** Test Cases ***
Variable demonstration
    [Tags]  Current
    Log  ${MY_GLOBAL_VARIABLE}

    ${my_local_var} =  Set Variable  Local variable is defined in a test case and uses the "Set Variable" keywords
    Log  ${my_local_var}

Variable demonstraton 2
    Log  ${MY_GLOBAL_VARIABLE}


# Run a specified test case(tag = current) in the Tests directory and logging the results to the Results directory.
# $ robot -d Results -i current Tests

# Variable Precedence
# Terminal > Script > keyword