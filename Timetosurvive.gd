extends Timer


var Picture = preload("res://Wintitle.tscn")
onready var player = get_tree().get_root().get_node("Arena/YSort/Player")


func _on_Timetosurvive_timeout():
	var picture = Picture.instance()
	add_child(picture)
	var position = Vector2(player.global_position) 
	picture.position = position
