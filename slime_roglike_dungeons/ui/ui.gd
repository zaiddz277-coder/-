extends CanvasLayer

@onready var coin_amount=$coin_counter/VBoxContainer/Label

func update_coin_texte():
	coin_amount.text=str(Globals.coin_amount)
