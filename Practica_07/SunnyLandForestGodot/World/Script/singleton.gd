# Singleton script
extends Node

var canvas_layer: CanvasLayer

func _ready():
	canvas_layer = get_node("/root/World/CanvasLayer")

func update_coins(amount):
	if canvas_layer:
		canvas_layer.coins += amount
		canvas_layer.update_coin_text()
