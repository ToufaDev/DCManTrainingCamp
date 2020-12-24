#include<mapInput.au3>

Func waitFrames($nb)
	Sleep(16.7 * $nb)
EndFunc

Func oneFrameInput($key)
	inputHold($key)
	waitFrames(1)
	inputRelease($key)
EndFunc

Func inputHold($key)

	Send("{" & $key & " down}");
EndFunc

Func inputRelease($key)
	Send("{" & $key & " up}");
EndFunc

Func QcfMotion($DIRECTION, $inputFinal)
	inputHold($DOWN)
	waitFrames(2)
	inputHold($DIRECTION)
	waitFrames(2)
	inputRelease($DOWN)
	waitFrames(2)
	InputHold($inputFinal)
	waitFrames(2)
	inputRelease($DIRECTION)
	inputRelease($inputFinal)
EndFunc

Func DiagonalJump($DIRECTION)
	If $DIRECTION <> $RIGHT And $DIRECTION <> $LEFT Then
		MsgBox(0, "error", "wrong direction on DiagonalJump function")
		Exit
	EndIf
	InputHold($DIRECTION)
	InputHold($UP)
	waitFrames(1)
	inputRelease($DIRECTION)
	inputRelease($UP)

EndFunc

Func Walk($NbFrames, $DIRECTION)

	InputHold($DIRECTION)
	waitFrames($NbFrames)
	inputRelease($DIRECTION)

EndFunc

Func JumpAttack($inputFinal, $DIRECTION)

	DiagonalJump($DIRECTION)
	waitFrames(24)
	oneFrameInput($inputFinal)

EndFunc

