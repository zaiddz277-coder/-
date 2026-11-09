extends StaticBody2D


func _process_(delta):
	coin_drop($AnimationPlayer)


func coin_drop(anim):
	anim.play("coin_drop")
	$AnimatedSprite2D.show_behind_parent=true

func _on_area_2d_body_entered(_body):
	Globals.coin_amount+=1
	print(Globals.coin_amount)
	await get_tree().create_timer(0.3).timeout
	queue_free()
