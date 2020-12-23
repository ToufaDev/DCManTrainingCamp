#include<SF2XCommands.au3>


Local $counter = 1
Do

	Local $interval = Random (1000, 5000, 1)
	Sleep($interval)

	Local $r = Random (1, 4, 1)
	Switch $r
		Case 1
			HadokenP2($LP)
		Case 2
			HadokenP2($MP)
		Case 3
			HadokenP2($HP)
		Case 4
			JumpAttackP2($HK)
			Sleep(40)
			WalkBackwardP2(60)
		Case Else
	EndSwitch

Until $counter = 0

