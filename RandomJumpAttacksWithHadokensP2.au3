#include<SF2XCommands.au3>


Local $counter = 1
Do

	Local $interval = Random (1000, 5000, 1)
	Sleep($interval)

	Local $r = Random (1, 4, 1)
	Switch $r
		Case 1
			QcfMotion($LEFT, $LP)
		Case 2
			QcfMotion($LEFT, $MP)
		Case 3
			QcfMotion($LEFT, $HP)
		Case 4
			JumpAttack($HK, $LEFT)
			Sleep(40)
			Walk(60, $RIGHT)
		Case Else
	EndSwitch

Until $counter = 0

