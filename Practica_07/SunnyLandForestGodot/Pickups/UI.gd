extends CanvasLayer

var coins = 0
var singleton
var timer = 0.0

func _ready():
	singleton = get_node("/root/Singleton")
	if singleton:
		singleton.canvas_layer = self

	update_coin_text()

func update_coin_text():
	$CoinText.text = str(coins)

func _process(delta):
	timer += delta
	update_timer_text()

func update_timer_text():
	var minutes = int(timer / 60)
	var seconds = int(timer) % 60
	$TimerText.text = str(minutes).pad_zeros(2) + ":" + str(seconds).pad_zeros(2)
