extends Node2D

export (PackedScene) var Mob
var score

func _ready():
	randomize()
	pass # Replace with function body.
	
	
func new_game(): #funcion para comenzar de nuevo
   	 score = 0
    	$Personaje.start($StartPosition.position)
   	 $StartTimer.start()

func game_over(): #funcion para fin del juego
    $ScoreTimer.stop()
    $MobTimer.stop()



func _on_ScoreTimer_timeout():
	$ScoreTimer.start()
	pass # Replace with function body.


func _on_StartTimer_timeout():
	score += 1
	pass # Replace with function body.
