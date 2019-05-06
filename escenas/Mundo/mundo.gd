extends Node2D

export (PackedScene) var Mob
var score

func _ready():
	pass # Replace with function body.



func _on_ScoreTimer_timeout():
	$ScoreTimer.start()
	pass # Replace with function body.


func _on_StartTimer_timeout():
	score += 1
	pass # Replace with function body.
