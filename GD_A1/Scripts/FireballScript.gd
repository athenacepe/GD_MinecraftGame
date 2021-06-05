extends Area2D

onready var global_vars = get_node("/root/Global")

const speed = 400
var velocity = Vector2()
var direction = 1

func _ready():
	pass 

func set_fireball_direction(dir):
	direction = dir
	if dir == -1:
		$AnimatedSprite.flip_h = true

func _physics_process(delta):
	velocity.x = speed * delta * direction
	translate(velocity)
	
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_Fireballs_body_entered(body):
	if "Skeleton" in body.name:
		body.dead()
		global_vars.score += 10
		queue_free()
	elif "Ghost" in body.name:
		body.dead()
		global_vars.score += 10
		queue_free()
	else :
		queue_free()
	pass
