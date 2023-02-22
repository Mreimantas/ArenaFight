extends Timer

var Enemy = preload("res://Enemy/Enemy.tscn")

func _on_Enemyspawn_timeout():
	#Enemy spawn
	var enemy = Enemy.instance()
	add_child(enemy)
	#place where enemy will spawn
	var position = Vector2(rand_range(20,700),rand_range(20,700)) 
	enemy.position = position
