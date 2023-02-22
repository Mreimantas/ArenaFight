extends KinematicBody2D

var motion
var speed = 1000
onready var player = get_tree().get_root().get_node("Arena/YSort/Player")

func _physics_process(delta):
	#detect players position and folow it
	if player == null:
		pass
	else:
		var direction = (player.global_position - global_position).normalized()
		motion = direction * speed * delta
		motion = move_and_slide(motion)


func _on_Hurtbox_area_entered(_area):
	queue_free()
