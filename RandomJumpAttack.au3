#include<SF2XCommands.au3>

Local $counter = 1
Do

	Local $interval = Random (1000, 5000, 1)
	Sleep($interval)
	#DO JUMP ATTACK
	JumpAttackP2($HK)

	Sleep(40)
	WalkBackwardP2(60)

Until $counter = 0

