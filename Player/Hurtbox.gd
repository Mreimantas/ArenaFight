extends Area2D

var health = 1

	health = health - 1
	print(health)
	if health == 0:
		queue_free()
