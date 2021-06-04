#include <Misc.au3>
#include <AutoItConstants.au3>
#include <GUIConstantsEx.au3>
#include <ColorConstants.au3>

Local $keystart = "76" ; The key to start the Autoclick (F4)
Local $keystop = "76" ; The key to stop the Autoclick (F4)
Local $closekey = "77" ; The key to delete the Autoclick (F8)
Local $autopearlkey = "46" ; The autopearl key  (f)
Local $autotntkey = "47" ; The autoTNT key  (g)
Local $antiafk_key = "4A" ; The Anti-AFK key (j)
Local $lagkey = "79"
Local $slotonekey = "&"
Local $slottwokey = "é" 
Local $chatkey = "54"




Example()

Func Example()

While 1
	If _IsPressed($keystart) Then
		Run("AutoClick.exe")
		WinWaitActive("Administrator: C:\Windows\system32\cmd.exe", "", 1)
		Send('start autoclick.exe' & "{ENTER}")
		Send('exit' & "{ENTER}")
		sleep (100)
		run ("clicker.exe")
		exit
	EndIf
  If _IsPressed($autopearlkey) Then
	  send ($slottwokey)
	  sleep (10)
	  MouseClick ( "right" )
	  sleep (10)
	  send ($slotonekey)
	  sleep (10)
    Endif
  If _IsPressed($autotntkey) Then
      MouseClick ( "right" )
	  sleep (10)
	  send ($slottwokey)
	  sleep (10)
	  MouseClick ( "right" )
	  sleep (50)
	  send ($slotonekey)
	Endif
  If _IsPressed($antiafk_key) Then
	  While 2
		  send ( "{z DOWN}" )
		  sleep (500)
		  send ( "{SPACE}" )
		  sleep (500)
		  MouseClick ( "left" )
		  sleep (500)
		  send ( "{d DOWN}" )
		  MouseClick ( "left" )	
		  sleep (500)
		  send ( "{d UP}" )
		  MouseClick ( "left" )
		  sleep (500)
		  send ( "{s DOWN}" )
		  MouseClick ( "left" )
		  sleep (500)
		  send ( "{s UP}" )
		  sleep (500)
		  send ( "{SPACE}" )
		  sleep (500)
		  MouseClick ( "left" )
		  sleep (500)
		  send ( "{q DOWN}" )
		  MouseClick ( "left" )
		  sleep (500)
		  send ( "{q UP}" )
		  MouseClick ( "left" )
		  sleep (500)
		  send ( "{z UP}" )
		  sleep (500)
		  MouseClick($MOUSE_CLICK_LEFT, -1, 1, 1)
		  sleep (500)
		  send ( "{SPACE}" )
		  If _IsPressed($antiafk_key) Then
			  Exit
		    Endif	
	    Wend
	Endif
	If _IsPressed($lagkey) Then
		Run("clumsy.exe")
		run ("clicker.exe")
		exit
	Endif
	If _IsPressed($chatkey) Then
		while 3
			If _IsPressed("1B") Then
				sleep (100)
				run ("clicker.exe")
				exit
			Endif
			If _IsPressed("0D") Then
				sleep (100)
				run ("clicker.exe")
				exit
			Endif
		Wend		
	Endif
	If _IsPressed($closekey) Then
		exit
	Endif
Wend