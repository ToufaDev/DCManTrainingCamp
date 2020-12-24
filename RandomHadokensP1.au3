#include<SF2XCommands.au3>

Local $counter = 1

Do
	Local $HadoForce = ""

	Local $r = 1
	$r = Random (1, 3, 1)
	Switch $r
		Case 1
			$HadoForce = $LP
		Case 2
			$HadoForce = $MP
		Case 3
			$HadoForce = $HP
		Case Else
	EndSwitch

	QcfMotion($RIGHT, $HadoForce)
	Local $interval = Random (1000, 5000, 1)
	Sleep($interval)
Until $counter = 0

