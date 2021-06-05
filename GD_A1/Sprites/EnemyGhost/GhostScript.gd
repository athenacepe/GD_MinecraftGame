extends KinematicBody2D

onready var global_vars = get_node("/root/Global")

const GRAVITY = 10
const SPEED = 60
const FLOOR = Vector2(0, -1)

var velocity = Vector2()
var direction = -1
var lives = 2

var is_dead = false

func _ready():
	pass

		
func dead():
	lives -= 1
	if lives == 0:
		is_dead = true
		if is_dead == true :
			$CollisionShape2D2.set_deferred("disabled", true)
			$RayCast2D.set_deferred("disabled", true)
			velocity = Vector2(0, 0)
			$AnimatedSprite.play("dead")
			$Timer.start()
	pass
	
func _process(delta):
	if is_dead == false:
		velocity.x = SPEED * direction
		if direction == 1:
			$AnimatedSprite.flip_h = true
		else:
			$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("walk")
		velocity.y += GRAVITY
		velocity = move_and_slide(velocity, FLOOR)
		
		if is_on_wall():
			direction = direction * -1
			$RayCast2D.position.x *= -1
			
		if $RayCast2D.is_colliding() == false:
			direction = direction * -1
			$RayCast2D.position.x *= -1

func _on_Timer_timeout():
	queue_free()
	pass # Replace with function body.
