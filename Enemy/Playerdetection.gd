extends Area2D

var player = null




func _on_Playerdetection_body_entered(body):
	player = body
