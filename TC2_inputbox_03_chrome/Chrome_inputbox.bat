@ECHO OFF
ECHO Congratulations! Your first batch file executed successfully.
ECHO Your test will be running soon...
ECHO Inside the timer
SLEEP 5
ECHO Outside the timer
ECHO Input box test TC2 Class 3
robot --timestampoutputs --log mylog.html --report input_box -d C:\Users\elsys\Documents\pycharm_test1\TC2_inputbox_03_chrome\reports_chrome chrome_inputbox.robot

