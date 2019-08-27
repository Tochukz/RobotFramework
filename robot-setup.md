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
   #### ChromeDriver - WebDriver  
   * Go to [sites.google.com/a/chromium.org/chromedriver/downloads](https://sites.google.com/a/chromium.org/chromedriver/downloads)  for chrome drivers.    
   * Install the appropraite version and follow the steps outlined under firefox driver setup to integrate chrome driver.  

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
