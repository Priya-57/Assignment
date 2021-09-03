'launch URL
SystemUtil.Run "chrome.exe", "http://www.htmlcanvasstudio.com/"

Set objBrw = Browser("name:=HTML Canvas Studio - Free.*").Page("title:=HTML Canvas Studio - Free.*")
Set objEle = objBrw.WebElement("html id:=imageTemp","html tag:=CANVAS")
'draw a horizontal line
xvalue=400
yvalue=250
toXvalue=900
toYvalue=250
objBrw.WebButton("class:=button line","title:=Draw a line").Click
Call dragline(xvalue,yvalue,toXvalue, toYvalue)

'draw a vertical line
xvalue=500
yvalue=300
toXvalue=500
toYvalue=600
Call dragline(xvalue,yvalue,toXvalue, toYvalue)

'draw a rectangle
xvalue=700
yvalue=300
toXvalue=900
toYvalue=200
objBrw.WebButton("class:=button rectangle","title:=Draw a rectangle").Click
Call drawRectangle(xvalue,yvalue,toXvalue, toYvalue)

'erase horizontal line
xvalue=400
yvalue=250
toXvalue=900
toYvalue=250
objBrw.WebButton("class:=button line","title:=Draw a line").Click
Call dragline(xvalue,yvalue,toXvalue, toYvalue)

Function dragline(xvalue,yvalue,toXvalue, toYvalue)
Set objBrw = Browser("name:=HTML Canvas Studio - Free.*").Page("title:=HTML Canvas Studio - Free.*")
Set objEle = objBrw.WebElement("html id:=imageTemp","html tag:=CANVAS")
set DeviceReplay = CreateObject("Mercury.DeviceReplay")
'219, 41
objEle.Click xvalue,yvalue
DeviceReplay.DragAndDrop xvalue,yvalue,toXvalue,toYvalue,LEFT_MOUSE_BUTTON
'objEle.Click 1500,1500
Set DeviceReplay = nothing
Set objEle = nothing
Set objBrw = nothing
End Function


Function drawRectangle(xvalue,yvalue,toXvalue, toYvalue)
Set objBrw = Browser("name:=HTML Canvas Studio - Free.*").Page("title:=HTML Canvas Studio - Free.*")
Set objEle = objBrw.WebElement("html id:=imageTemp","html tag:=CANVAS")
set DeviceReplay = CreateObject("Mercury.DeviceReplay")

objEle.Click xvalue,yvalue
DeviceReplay.DragAndDrop xvalue,yvalue,toXvalue,toYvalue,LEFT_MOUSE_BUTTON

Set DeviceReplay = nothing
Set objEle = nothing
Set objBrw = nothing
End Function
