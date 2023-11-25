extends Area2D





func _on_PasarNivel_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene_to_file("res://World/world2.tscn")
