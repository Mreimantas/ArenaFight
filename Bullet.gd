extends KinematicBody2D


var speed = 5000
var enemy = null
onready var player = get_tree().get_root().get_node("Arena/YSort/Player")

func _physics_process(delta):
	if enemy:
		var direction = (enemy.position - global_position).normalized()
		var movement = direction * speed * delta
		movement = move_and_slide(movement)
	else:
		var direction = (player.global_position - global_position).normalized()
		var motion = direction * speed * delta
		motion = move_and_slide(motion)


func _on_BulletRadius_body_entered(body):
	enemy = body


func _on_BulletRadius_body_exited(_body):
	enemy = null
