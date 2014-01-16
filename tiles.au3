Func Tile_Gen ( $x , $y )

	Dim $rTiles [ $y ] [ $x ]

	For $cy = 0 To $y - 1
		For $cx = 0 To $x - 1

			$rTiles [ $cy ] [ $cx ] = Round ( Random ( 2 , 4 ) )

		Next
	Next

	Return $rTiles

EndFunc

Global $tiles = Tile_Gen ( $TILES_X , $TILES_Y )

#cs
Global $graphic

Dim $graphic [ $TILES_Y ] [ $TILES_X ]

For $cy = 0 To $TILES_Y - 1
	For $cx = 0 To $TILES_X - 1

		$graphic [ $cy ] [ $cx ] = GUICtrlCreateGraphic ( $cx * $TILE_SIZE + 5 , $cy * $TILE_SIZE + 5 , $TILE_SIZE , $TILE_SIZE )

	Next
Next
#ce
