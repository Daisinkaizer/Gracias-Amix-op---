extends Node2D

var Objetivo = preload("res://escenas/Tiburon/Tiburon.tscn")


func _ready():
	$Timer.start(5)
	var objetivoInstancia = Objetivo.instance() # Crea una instancia de Objetivo
	add_child(objetivoInstancia)
	pass # Replace with function body.


func _on_Timer_timeout():
	var objetivoInstancia = Objetivo.instance() # Crea una instancia de Objetivo
	add_child(objetivoInstancia)
	pass