extends Node3D

func _on_area_3d_body_entered(body):
	if body.get_name() == "CharacterBody3D":
		body.gravity = 3
		queue_free()
