
extends KinematicBody2D

onready var global_vars = get_node("/root/Global")

const UP = Vector2(0, -1)
const SPEED = 300
const GRAVITY = 20
const JUMP_HEIGHT = -500
const FIREBALL = preload("res://Scenes/Fireball.tscn")

var motion = Vector2() 


func _ready():
	pass 


# warning-ignore:unused_argument
func _physics_process(delta):
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right")  :
		$Dag.flip_h = false #flip sprite to face direction
		motion.x = SPEED
		$Dag.play("Run")
		if sign ($Position2D.position.x) == -1:
			$Position2D.position.x *= -1
			
	elif Input.is_action_pressed("ui_left") :
		$Dag.flip_h = true #flip sprite to face direction
		motion.x = -SPEED
		$Dag.play("Run")
		if sign ($Position2D.position.x) == 1:
			$Position2D.position.x *= -1
		
	else:
		motion.x = 0
		$Dag.play("Idle")
	
	if is_on_floor():
		if Input.is_action_pressed("ui_up") :
			$JumpSound.play()
			motion.y = JUMP_HEIGHT
	else:
		if motion.y < 0:
			$Dag.play("Jump") 
		else:
			$Dag.play("Fall")
		
	motion = move_and_slide(motion, UP)
	
	if Input.is_action_just_pressed("ui_focus_next"):
		
		var fireball = FIREBALL.instance()
		if sign ($Position2D.position.x) == 1:
			fireball.set_fireball_direction(1)
		else:
			fireball.set_fireball_direction(-1)
			$Dag.flip_h = true
		get_parent().add_child(fireball)
		fireball.position = $Position2D.global_position
		$Dag.play("Fire")

func _on_VisibilityNotifier2D_screen_exited():
	if get_tree().get_current_scene().get_name() == "World1" :
		if global_vars.pie == 2:
			get_tree().change_scene("res://World/World2.tscn")
		else :
			global_vars.lives -= 1
			global_vars.score = 0
			global_vars.pie = 3
			get_tree().reload_current_scene()
	
	elif get_tree().get_current_scene().get_name() == "World2":
		if global_vars.pie == 0:
			get_tree().change_scene("res://World/End.tscn")
		else :
			global_vars.lives -= 1
			global_vars.score = 0
			global_vars.pie = 2
			get_tree().reload_current_scene()
	pass
	
