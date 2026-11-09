extends Area2D

var can_take=false
var rotition_speed=3

func _process(delta):
	rotation+=rotition_speed*delta
	if can_take==true:
		if Input.is_action_just_pressed("take")and can_take==true:
			$Sprite2D.visible=false
			
func _on_body_entered(body):
	can_take=true
