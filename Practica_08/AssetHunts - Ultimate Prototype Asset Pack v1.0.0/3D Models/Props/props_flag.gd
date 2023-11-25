extends Node3D

func _on_area_3d_body_entered(body):
		if body.get_name() == "CharacterBody3D":
			var singleton = get_node("/root/Singleton")
			if singleton and singleton.has_method("update_coins"):
				singleton.update_coins(1)
				
			queue_free()
