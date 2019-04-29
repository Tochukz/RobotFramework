## Setup and Installations for Robot framework
* Install Python  
* Install PIP
* Use PIP to install Robot Framework  
`$ pip install robotframework`  
* Use PIP to install SeleniumLibrary  
`$ pip install robotframework-selenuimlibrary`  
* Install the request library (will be used for making API calls)  
`$ pip install robotframework-requests`  
* Confirm that the installations are successful:  
```
$ python --version  
$ pip --version  
$ robot --version
```
* Install Selenium Webdrivers for each chosen browser (each installed browser need its own Webdriver)     
  * Head on to [seleniumhq.org/download/](https://www.seleniumhq.org/download/)
  * Go to the third party drivers section and select your choice of browser driver and download the appropriate version.  
  * I install firefox and chrome driver. See firefox driver installation steps below.
  #### Download and install Firefox geckodriver
* Download the zip file for geckodriver from [github.com/mozilla/geckodriver/releases](https://github.com/mozilla/geckodriver/releases)
* Unzip the tar  file  
 `$ tar -xvf geckodriver-vo.24.0-linux64.tar.gz`
* Make the unziped file executable   
`$ chmod +x geckodriver`
* Add the geckodriver executable to $PATH by moving it to the bin directory _/usr/local/bin_  

Same method can be used to install chrome driver.  

__NB:__ Selenium is a keyword library that has commands that control browsers, in other words it automates browsers.
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
* YOu can keep going back and forth by doing _ctrl+left-arrow_ and _ctrl+right-arrow_   
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
`$ robot my-script.robot -d some/path`
