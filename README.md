# Robot test
The following project intends to test functionality of logging in the PS portal with Robot framework.

# Task.robot file

The settings section involves two usages:

* _Selenium2Library_ for importing Selenium Library functions
* _Script2.Script_ for the python file we have used alongside.

The Test Cases involve the following:

* Opening the portal through a keyword which will be described in the _Keywords_ section.
* Inputting text and password in the subsequent lines
* Clicking the button for sign in
* A selenium wait is introduced for the sake of delay
* A variable _status_ will store the status of the individual test, either _TRUE_ or _FALSE_ 
* A keyword _Run keyword And Continue On Failure_ will make the tests run even after failure
* Finally, _result_ is calculated by calling function _getting_path()_ which is invoked by passing status variable.

The Keywords are the following:

* Opening the browser using the link of the portal and specifying the type of browser (chrome)

The variables are the following:

* _path_ and _device_ for passing to the function.


# Script2.py file

It has a constructor and a function _getting_path()_ which returns the passed result from the Task.robot file.
