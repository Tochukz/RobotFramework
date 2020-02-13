## Installations and Setup for RobotFramework
* Check if python and pip are installed on your machine:  
```
$ python --version  
$ pip --version  
```
If not then:
* Install Python  
* Install pip  (google how to do these two)  
pip is Python's package manager, much like composer for PHP, npm for JavaScript or nuget for C#.    
Verify that python and pip have been installed using the commands above.  
`$ python --version && pip --version`  
* Use pip to install Robot Framework  
`$ pip install robotframework`  
* Confirm that the installations are successful:  
`$ robot --version`  
* Use pip to install SeleniumLibrary  
`$ pip install robotframework-selenuimlibrary`  
* Install the request library (request library will be used for making API calls)  
`$ pip install robotframework-requests`  

* Install Selenium Webdrivers for each chosen browser (each installed browser need its own Webdriver)     
  * Head on to [seleniumhq.org/download/](https://www.seleniumhq.org/download/)
  * Go to the third party drivers section and select your choice of browser driver and download the appropriate version.  
  * I install firefox driver as an example. See firefox driver installation steps below.
  #### Firefox geckodriver installation process
* Download the zip file for geckodriver from [github.com/mozilla/geckodriver/releases](https://github.com/mozilla/geckodriver/releases)
* Unzip the tar  file  
 `$ tar -xvf geckodriver-vo.24.0-linux64.tar.gz`
* Make the unziped file executable   
`$ chmod +x geckodriver`
* Add the _geckodriver_ executable to $PATH by moving it to the bin directory _/usr/local/bin_  

Same steps can be used to install chrome driver, or opera.  

__NB:__ Selenium is a keyword library that has commands that control browsers, in other words it automates browsers.  

## Write your first script and test it  (my-test.robot)
This test open a firefox windows, navigate the home page of amazon.com and closes the windows.
```
*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary
#Suite Teardown  Close Browser

*** Variables ***

*** Test Cases ***
User must be able to visite home page
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  firefox
    Maximize Browser Window
    Close Browser

*** Keywords ***
```
Run the test:  
`$ robot my-test.robot`  

## IntelliJ Pycharm IDE
* Install the Pycharm IDE and Intellibot plugin
  * Go to [jetbrains.com/pycharm/](https://www.jetbrains.com/pycharm/)
  * Download the community edition of _pycharm_ and install it. Altternately, you can install pycharm fromm ubuntu software center.  
  * On the start dialog select configuration, plugins, search for _Intellibot_ and install __intellibot-seleniumlibrary-patched__
* Create a base directory for scripts

See pypi.python.org for other library options  
Enter robotframework in  the search bar

* To see all the pyhton packages installed do:  
`$ pip list`  

## Tips
* To navigate to a keyword definition, place you cursor on the key word and press _ctrl+b_ and you will be taken to the file where the function is defined. i.e _ctrl+b_ allows us to drill into keywords.  
* To go back to you previous location (before _ctrl+b_ operation), you can press alt+left-arrow, which is the opposite of _ctrl+b_. You can keep pressing ctrl+left-arrow to return back.
* You can keep going back and forth by doing _ctrl+left-arrow_ and _ctrl+right-arrow_   
* Hold _alt_ key and click close on a tab to close all other tabs but the tab
* Right click on a given directory and clic find in path to search for a text  in a specific directory.

## Script
The script formats available to you are:
* Tab Seperated Value, TSV (.robot)
* HTML (RIDE). Ihis one is specific to the RIDE editor designed for RobotFramework  
* Pipe delimited

## Documentation
To explore RobotFramework Libraries go to [robotframework.org/#libraries](https://robotframework.org/#libraries), click on _external library_ and select any of the library(e.g seleniumlibrary) to go navigate to the library's documentation.   
* [SeleniumLibrary Github](https://github.com/robotframework/SeleniumLibrary/).
* [SeleniumLibrary Doc](http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)  

Seach for the keywords that your choosen library supports for example, search for selenium suported keywords under the Shortcuts section.

## Choose a Library and Write Steps
* Stat with manual test scenarios
* Examine library capabilities
* use Selenium IDE as a helper

## Running your scripts
* Use the terminal
On Pycharm IDE inbuilt terminal or Ubuntu terminal window do:  
`$ robot my-script.robot`  

* To specify where your result logs get written to, do:  
`$ robot -d some/path my-script.robot `  

* To specify a tagged test to run do:  
`$ robot -d report/path --include my-script.robot`  

To pass in a variable do :  
`$ robot -d report/path -variable VAR_NAME:VALUE myscript.robot`  
You may  use -i and -v inplace of the --include and --variable flag respectively.  

## Run Multiple tests defined in a "tests" directory  
`$ robot -d results/dir tests`  
This  will run all the _tests_ defined int the tests directory and sub-directory  

`$ robot -d results -N "Title of Suite" tests`  
The header of the report will be __Title of Suite__  

## Run a single test  case  
`$ robot -d path/to/report/dir path/to/test-file.robot`  
`$ robot -d report/dir -t "Test Case Name " "path/to/test-file.robot "`  
This should run a specific test case  

## Triggering options
* Pycharm IDE
* Terminal
* Batch file

Using a batch file - login-test.bat (for windows)
```
@echo off
cd c:\development\robot-scrips\amazon
call robot -d results/login -v BROWSER:ie tests/amazn.roobot
```
Double click on the batch file to run the script.  

* Task Scheduler
* Saucelabs.com ( via terminal)
* Jenkins (remote exec on Saucelabs.com)
* Runnug Multiple Suites
  * Enhanced results log
* Running a Single Test Case

## Test structure and design
 Tests Source Dir
   - Tests: This is where the scripts live
     - Amazon.robot     
   - Resources: Keywords lives in the resources files / Keyword files
     - AmazonApp.robot
     - Common.robot : Will hold generic stuffs like opening and closing of the browser
     - Page Objects: Logic and Locators are defined here.
       - LandingPage.robot
       - TopNav.robot
       - SearchResults.robot
       - Product.robot
       - Cart.robot
   - Results

A page object does not need to be a page. It can be a section in a page if the section is used in many different pages.  



### Running the script to override variables at run time
`$ robot -d Results/ -v BROWSER:firefox -v SEARCH_TERM:"Lamborghini Gallardo" Tests/Amazon.robot`  

### Run a specified test case(tag = current) in the Tests directory and logging the results to the Results directory.  
`$ robot -d Results -i current Tests`  
