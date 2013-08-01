#tag WebPage
Begin WebPage DemoPage
   Compatibility   =   ""
   Cursor          =   0
   Enabled         =   True
   Height          =   534
   HelpTag         =   ""
   HorizontalCenter=   0
   ImplicitInstance=   True
   Index           =   0
   IsImplicitInstance=   False
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   LockVertical    =   False
   MinHeight       =   400
   MinWidth        =   600
   Style           =   "None"
   TabOrder        =   0
   Title           =   "Notification Demo Page"
   Top             =   0
   VerticalCenter  =   0
   Visible         =   True
   Width           =   600
   ZIndex          =   1
   _HorizontalPercent=   0.0
   _ImplicitInstance=   False
   _IsEmbedded     =   False
   _Locked         =   False
   _NeedsRendering =   True
   _OfficialControl=   False
   _OpenEventFired =   False
   _ShownEventFired=   False
   _VerticalPercent=   0.0
   Begin KLNotificationView NotificationView
      AnimationSpeed  =   0.2999999999999999888978
      Cursor          =   0
      DefaultPresentedDuration=   4.0
      Enabled         =   True
      Height          =   102
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   111
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      ScrollbarsVisible=   0
      Style           =   "0"
      TabOrder        =   0
      Top             =   -177
      VerticalCenter  =   0
      Visible         =   True
      Width           =   330
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _OpenEventFired =   False
      _ShownEventFired=   False
      _VerticalPercent=   0.0
   End
   Begin WebButton BTN_StandardView
      Caption         =   "Standard Notification View"
      Cursor          =   0
      Enabled         =   True
      Height          =   36
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   180
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   True
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   1
      Top             =   143
      VerticalCenter  =   0
      Visible         =   True
      Width           =   240
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebButton BTN_AlertView
      Caption         =   "Alert Notification View"
      Cursor          =   0
      Enabled         =   True
      Height          =   36
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   180
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   True
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   1
      Top             =   191
      VerticalCenter  =   0
      Visible         =   True
      Width           =   240
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebButton BTN_NotificationViewFixed
      Caption         =   "Alert Notification View Fixed"
      Cursor          =   0
      Enabled         =   True
      Height          =   36
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   180
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   True
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   1
      Top             =   239
      VerticalCenter  =   0
      Visible         =   True
      Width           =   240
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebLabel LBL_Instruction
      Cursor          =   1
      Enabled         =   True
      HasFocusRing    =   True
      Height          =   181
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   53
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   0
      Style           =   "0"
      TabOrder        =   2
      Text            =   "1) Copy KLNotificationView folder to your Project.\n\n2) Add the KLNotificationView class (object) to the page or container you want the notification to appear from. \n\n3) From anywhere in the container or page, call the .show method… See the buttons for more info on the code.\n\nRead the read me inside KLNotificationView class for more information and license."
      Top             =   322
      VerticalCenter  =   0
      Visible         =   True
      Width           =   484
      ZIndex          =   1
      _NeedsRendering =   True
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Resized()
		  //OPTIONAL IF YOU WANT YOUR VIEW TO RESIZE WHEN YOUR PAGE RESIZES.
		  
		  NotificationView.ResizeToView(self) //Send event so it can resize the view accordingly (Optional)
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events BTN_StandardView
	#tag Event
		Sub Action()
		  NotificationView.Show("Notification View","This is the content of the notification. A Normal Notification",KLNotificationView.NotificationKind.Normal)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BTN_AlertView
	#tag Event
		Sub Action()
		  NotificationView.Show("Alert Title","This is the content of the Alert or Warning Notification. You could change more aspects of the style if you like",KLNotificationView.NotificationKind.Warning)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BTN_NotificationViewFixed
	#tag Event
		Sub Action()
		  NotificationView.Show("Fixed Dialog","Tap here anywhere to dismiss..." + chr(13) + "This dialog is fixed forever until manually dismissed by tapping it or sending the dismiss method call",KLNotificationView.NotificationKind.Warning, NotificationView.kFixedView)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Cursor"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		InheritedFrom="WebControl"
		#tag EnumValues
			"0 - Auto"
			"1 - Standard Pointer"
			"2 - Finger Pointer"
			"3 - IBeam"
			"4 - Wait"
			"5 - Help"
			"6 - Arrow All Directions"
			"7 - Arrow North"
			"8 - Arrow South"
			"9 - Arrow East"
			"10 - Arrow West"
			"11 - Arrow North East"
			"12 - Arrow North West"
			"13 - Arrow South East"
			"14 - Arrow South West"
			"15 - Splitter East West"
			"16 - Splitter North South"
			"17 - Progress"
			"18 - No Drop"
			"19 - Not Allowed"
			"20 - Vertical IBeam"
			"21 - Crosshair"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HorizontalCenter"
		Group="Behavior"
		Type="Integer"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Group="ID"
		Type="Integer"
		InheritedFrom="Object"
	#tag EndViewProperty
	#tag ViewProperty
		Name="IsImplicitInstance"
		Group="Behavior"
		Type="Boolean"
		InheritedFrom="WebPage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Group="Position"
		InitialValue="0"
		Type="Integer"
		InheritedFrom="Object"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Group="Behavior"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Group="Behavior"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		InheritedFrom="WebPage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		InheritedFrom="WebPage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		InheritedFrom="Object"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		InheritedFrom="Object"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabOrder"
		Group="Behavior"
		Type="Integer"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
		InheritedFrom="WebPage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Group="Position"
		InitialValue="0"
		Type="Integer"
		InheritedFrom="Object"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VerticalCenter"
		Group="Behavior"
		Type="Integer"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ZIndex"
		Group="Behavior"
		InitialValue="1"
		Type="Integer"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_HorizontalPercent"
		Group="Behavior"
		Type="Double"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_ImplicitInstance"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebPage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_IsEmbedded"
		Group="Behavior"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_Locked"
		Group="Behavior"
		Type="Boolean"
		InheritedFrom="WebPage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_NeedsRendering"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_OfficialControl"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_OpenEventFired"
		Group="Behavior"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_ShownEventFired"
		Group="Behavior"
		Type="Boolean"
		InheritedFrom="WebPage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_VerticalPercent"
		Group="Behavior"
		Type="Double"
		InheritedFrom="WebControl"
	#tag EndViewProperty
#tag EndViewBehavior
