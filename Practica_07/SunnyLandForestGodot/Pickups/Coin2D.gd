# Coin script
extends Area2D

func _on_Coin2D_body_entered(body):
	var singleton = get_node("/root/Singleton")
	if singleton and singleton.has_method("update_coins"):
		singleton.update_coins(1)

	emit_signal("coinCollected")
	queue_free()
