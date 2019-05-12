extends Node2D

var Objetivo2 = preload("res://escenas/Piraña/Piraña.tscn")


func _ready():
	$Timer.start()
	var objetivo2Instancia = Objetivo2.instance() # Crea una instancia de Objetivo
	add_child(objetivo2Instancia)
	pass # Replace with function body.


func _on_Timer_timeout():
	var objetivo2Instancia = Objetivo2.instance() # Crea una instancia de Objetivo
	add_child(objetivo2Instancia)
	pass