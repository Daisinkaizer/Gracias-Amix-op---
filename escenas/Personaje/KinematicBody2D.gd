extends KinematicBody2D
var velocidad = Vector2(0,0)

var gravedad = 15;



func _physics_process(delta):
	
	if velocidad.y < 100:
		velocidad.y += gravedad;
	
	if Input.is_action_pressed("ui_right")and velocidad.x < 200:
		velocidad.x += 200;
	if Input.is_action_pressed("ui_left") and velocidad.x > -200:
		velocidad.x -= 20;
	if Input.is_action_just_released("ui_right"):
		velocidad.x = 0;
	if Input.is_action_just_released("ui_left"):
		velocidad.x = 0;
	
	
	#if Input.is_action_pressed("ui_up")and velocidad.x < 200:
		#velocidad.y -= 20;
	#if Input.is_action_pressed("ui_down") and velocidad.x > -200:
		#velocidad.y += 20;
	#if Input.is_action_just_released("ui_up"):
		#velocidad.y = 0;
	#if Input.is_action_just_released("ui_down"):
		#velocidad.y = 0;
	if Input.is_action_just_pressed("ui_up"):
		velocidad.y = -200

	move_and_slide(velocidad)