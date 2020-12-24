#include<SF2XCommands.au3>

Local $counter = 1
Do

	Local $interval = Random (1000, 5000, 1)
	Sleep($interval)
	#DO JUMP ATTACK
	JumpAttack($HK, $LEFT)

	Sleep(40)
	Walk(60, $RIGHT)

Until $counter = 0

