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


Func HadokenP2($inputFinal)

	inputHold($DOWN)
	waitFrames(2)
	inputHold($LEFT)
	waitFrames(2)
	inputRelease($DOWN)
	waitFrames(2)
	InputHold($inputFinal)
	waitFrames(2)
	inputRelease($LEFT)
	inputRelease($inputFinal)

EndFunc

Func ForwardJumpP2()

	InputHold($LEFT)
	InputHold($UP)
	waitFrames(1)
	inputRelease($LEFT)
	inputRelease($UP)

EndFunc

Func WalkForwardP2($NbFrames)

	InputHold($LEFT)
	waitFrames($NbFrames)
	inputRelease($LEFT)

EndFunc

Func WalkBackwardP2($NbFrames)

	InputHold($RIGHT)
	waitFrames($NbFrames)
	inputRelease($RIGHT)

EndFunc

Func JumpAttackP2($inputFinal)

	ForwardJumpP2()
	waitFrames(24)
	oneFrameInput($inputFinal)

EndFunc

