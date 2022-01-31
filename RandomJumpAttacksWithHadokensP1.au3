#include<SF2XCommands.au3>


Local $counter = 1
Do

	Local $interval = Random (1000, 5000, 1)
	Sleep($interval)

	Local $r = Random (1, 4, 1)
	Switch $r
		Case 1
			QcfMotion($RIGHT, $LP)
		Case 2
			QcfMotion($RIGHT, $MP)
		Case 3
			QcfMotion($RIGHT, $HP)
		Case 4
			JumpAttack($HK, $RIGHT)
			Sleep(40)
			Walk(60, $LEFT)
		Case Else
	EndSwitch

Until $counter = 0

