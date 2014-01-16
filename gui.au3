Global $wMain = GUICreate ( $TITLE , $SIZE_X , $SIZE_Y )
GUISetState ( @SW_SHOW )

DrawAllTiles ( )

While 1

	Switch GUIGetMsg()
        Case $GUI_EVENT_CLOSE
            Exit

	EndSwitch

	If $Pressed = True Then

		DrawAllTiles ( )

		$Pressed = False

	EndIf
WEnd
