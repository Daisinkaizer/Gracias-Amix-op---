extends AnimatedSprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _process(delta):
	position.y -= 5
	pass


func _on_Area2D_area_entered(area):
	queue_free()
	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.
