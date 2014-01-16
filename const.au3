;Static Variable Definitions

;Option Setting
AutoItSetOption ( "MouseCoordMode" , 0 )

;Color Definitions
Global $colors
Dim $colors [ 11 ]

	;Generic
	$colors [ 0 ] = 0xB0B0B0 ;Background
	$colors [ 1 ] = 0x000000 ;Text

	;Stones
	$colors [ 2 ] = 0x000000 ;Stone Color 1
	$colors [ 3 ] = 0xFFFFFF ;Stone Color 2
	$colors [ 4 ] = 0xFF0000 ;Stone Color 3

	;Tiles
	$colors [ 5 ] = 0xFFFFFF ;Tile Background
	$colors [ 6 ] = 0x808080 ;Cursor
	$colors [ 7 ] = 0x00FF00 ;Selected Tile (General)
	$colors [ 8 ] = 0xB0B0B0 ;Selected Tile (Primary)

	;Outlines
	$colors [ 9 ] = 0x000000 ;Stone Outline
	$colors [ 10] = 0x505050 ;Tile Outline

;Size Definitions

	;GUI Size
	Const $SIZE_X = 905
	Const $SIZE_Y = 610

	;Array Size
	Const $TILES_X = 6
	Const $TILES_Y = 4

	;Tile Size
	Local $cTiles
	If ( $SIZE_X - 20 ) / $TILES_X > ( $SIZE_Y - 20 ) / $TILES_Y Then
		$cTiles = ( $SIZE_X - 20 ) / $TILES_X
	Else
		$cTiles = ( $SIZE_Y - 20 ) / $TILES_Y
	EndIf

	Const $TILE_SIZE = $cTiles

;Misc. Definitions

	Const $TITLE = "Box-Off"

;Dynamic Vars

	Global $cur_X = 0
	Global $cur_Y = 0

;Hotkeys

	Global $Pressed = True ;Used for detecting keypress

	;Up Key
	Func MoveCurUp ( )
		$cur_Y = $cur_Y - 1
		If $cur_Y < 0 Then
			$cur_Y = $TILES_Y - 1
		EndIf
		$Pressed = True
	EndFunc
	HotKeySet ( "{UP}" , "MoveCurUp" )

	;Down Key
	Func MoveCurDn ( )
		$cur_Y = $cur_Y + 1
		If $cur_Y > $TILES_Y - 1 Then
			$cur_Y = 0
		EndIf
		$Pressed = True
	EndFunc

	HotKeySet ( "{DOWN}" , "MoveCurDn" )

	;Left Key
	Func MoveCurLeft ( )
		$cur_X = $cur_X - 1
		If $cur_X < 0 Then
			$cur_X = $TILES_X - 1
		EndIf
		$Pressed = True
	EndFunc
	HotKeySet ( "{LEFT}" , "MoveCurLeft" )

	;Right Key
	Func MoveCurRt ( )
		$cur_X = $cur_X + 1
		If $cur_X > $TILES_X - 1 Then
			$cur_X = 0
		EndIf
		$Pressed = True
	EndFunc

	HotKeySet ( "{RIGHT}" , "MoveCurRt" )
