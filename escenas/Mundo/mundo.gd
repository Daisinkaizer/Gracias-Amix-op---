extends Node2D

export (PackedScene) var Mob
var score

func _ready():
	pass # Replace with function body.
	
func game_over(): #funcion para fin del juego
    $ScoreTimer.stop()
    $MobTimer.stop()

func new_game(): #funcion para comenzar de nuevo
    score = 0
    $Player.start($StartPosition.position)
    $StartTimer.start()


func _on_ScoreTimer_timeout():
	$ScoreTimer.start()
	pass # Replace with function body.


func _on_StartTimer_timeout():
	score += 1
	pass # Replace with function body.
