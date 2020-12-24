#include<SF2XCommands.au3>


Local $counter = 1
Do

	Local $interval = Random (1000, 5000, 1)
	Sleep($interval)

	Local $r = Random (1, 4, 1)
	Switch $r
		Case 1
			QcfMotion($LP, $LEFT)
		Case 2
			QcfMotion($MP, $LEFT)
		Case 3
			QcfMotion($HP, $LEFT)
		Case 4
			JumpAttack($HK, $LEFT)
			Sleep(40)
			Walk(60, $RIGHT)
		Case Else
	EndSwitch

Until $counter = 0

