KLNotificationView
==================

![ScreenShot](http://s11.postimg.org/yppurjb4z/KLNotification_View_SS.png)  
_Alternate screenshot url: [here](https://dl.dropboxusercontent.com/u/3785834/KLNotificationViewSS.png)_  

A simple to implement and use notification view for web applications written for the Web Xojo Target.


**Written by :** Francisco Lobo de la Garza  
**From:** Monterrey N.L Mexico  
**Contact:** Twitter: [@KikoLobo](http://twitter.com/KikoLobo) or at XOJO Forums (Francisco Lobo)  
**Website:** [http://www.kikolobo.com](http://www.kikolobo.com)  
**Version:** 0.1 (Beta) [July 29th 2013]  



  
####HOW TO USE####
  - Copy the folder named KLNotificationView from the sample project to your project.
  - Add the KLNotificationView class to your WebPage/WebContainer
  - Call the .show method with the parameters (see demo) for the notification view.
  - The view should come down from the top of the parent webview.

####RESTRICTIONS####

  This piece of code is free as free speech. The only condition for use is that you DON'T repackage this code in whole or in part and sell it. 
  Also welcomed but not mandatory are credits in your software about page: 
     "WEB Notification View based on KLNotificationView for XOJO by Francisco Lobo de la Garza"

  You CAN however fully use this code in your commercial or paid application in whole or in part.

  Please contribute to the codebase, and feel free to send any suggestions either thru twitter or thru the XOJO forums.
  

####REVISION HISTORY####
  Version 0.1 (Beta)  -  July 29th 2013
    - Initial Release
   
   **Known Issues** (1.0):
    If you call several .show methods in succesion while a notification view is already presented, the newest request is ignored. This is by design, 
    since there is no cancel method for the WebAnimtor class, so there is a chance that you your newly submited messages get hidden by the old dismiss 
    animations that are already waiting in the keyframes. You can send an override method
    although the behavior is experimental.
