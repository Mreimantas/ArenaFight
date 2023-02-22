extends KinematicBody2D

var max_speed = 100
var acceleration = 500
var friction = 500
var velocity = Vector2.ZERO
var health = 1

func _physics_process(delta): # this is player movement
	var vector = Vector2.ZERO
	vector.x = Input.get_action_strength("right_D")-Input.get_action_strength("left_A")
	vector.y = Input.get_action_strength("down_S")-Input.get_action_strength("up_W")
	vector = vector.normalized()
	
	if vector != Vector2.ZERO:
		velocity = velocity.move_toward(vector * max_speed, acceleration * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, friction * delta)
	
	velocity = move_and_slide(velocity)

func _on_hurtbox_area_entered(_area): #When enemy touch player, player dies
	health = health - 1
	if health == 0:
		queue_free()
