extends CanvasLayer

signal start_game


func show_message(text):
	$MessageLabel.text = text
	$MessageLabel.show()
	$MessageTimer.start()

func show_game_over():
	show_message("Game Over")
	await $MessageTimer.timeout

	$MessageLabel.text = "Sobreviva!"
	$MessageLabel.show()
	await get_tree().create_timer(1.0).timeout
	$StartButton.show()


func update_score(score):
	$ScoreLabel.text = str(score)


func _ready():
	pass


func _process(delta):
	pass


func _on_start_button_pressed():
	$StartButton.hide()
	start_game.emit()



func _on_message_timer_timeout():
	$MessageLabel.hide()
