$graphic = GUICtrlCreateGraphic ( 10 , 10 , $SIZE_X - 20 , $SIZE_Y - 20 )

Func DrawTile ( $x , $y , $color , $cursor , $selected , $graphic )

	Local $beginX = $x * $TILE_SIZE + 5
	Local $beginY = $y * $TILE_SIZE + 5
	Local $endX = $x * $TILE_SIZE + $TILE_SIZE - 5
	Local $endY = $y * $TILE_SIZE + $TILE_SIZE - 5

	Local $bgCol
	If $cursor = True Then
		$bgCol = $colors [ 6 ]
	Else
		$bgCol = $colors [ 5 ]
	EndIf

	GUICtrlSetGraphic ( $graphic , $GUI_GR_COLOR , $colors [ 10 ] , $bgCol )
	GUICtrlSetGraphic ( $graphic , $GUI_GR_RECT , $beginX , $beginY , $endX - $beginX , $endY - $beginY )

	GUICtrlSetGraphic ( $graphic , $GUI_GR_COLOR , $colors [ 9 ] , $colors [ $color ] )
	GUICtrlSetGraphic ( $graphic , $GUI_GR_ELLIPSE , $beginX + 5 , $beginY + 5 , $endX - $beginX - 10 , $endY - $beginY - 10 )

	;End Graphic

EndFunc

Func DrawAllTiles ( )

	$graphic = GUICtrlCreateGraphic ( 10 , 10 , $SIZE_X - 20 , $SIZE_Y - 20 )

	;$lbl = GUICtrlCreateLabel ( "" , 10 , 10 , 500 , 30 )

	For $x = 0 To $TILES_X - 1 Step 1
		For $y = 0 To $TILES_Y - 1 Step 1

			Local $cCol = $tiles [ $y ] [ $x ]

			Local $cCur

			If $x = $cur_X And $y = $cur_Y Then
				$cCur = True
			Else
				$cCur = False
			EndIf

			DrawTile ( $x , $y , $cCol , $cCur , False , $graphic )

		Next
	Next

	;GUICtrlSetData ( $lbl , $cPos [ 0 ] & @CRLF & $cPos [ 1 ] )

EndFunc
