extends Node2D


var chest_open=false
var can_take=false
func _process(delta):
	if can_take==true:
		if Input.is_action_just_pressed("take") and chest_open== false:
			$AnimatedSprite2D.play("door_open")
			chest_open=true

	



func _on_area_2d_body_entered(body):
	can_take=true
