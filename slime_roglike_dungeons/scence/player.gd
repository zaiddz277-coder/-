extends CharacterBody2D


var speed=100
var can_dash=true
var healthe=200
var player_state

func _physics_process(_delta):
	var direction=Input.get_vector("left","raight","up","down")
	if direction.x == 0 and direction.y==0:
		player_state="idle"
	else:
		player_state="walking"
	velocity=direction*speed
	move_and_slide()
	look_at(get_global_mouse_position())
	play_anim(direction)
	if Input.is_action_just_pressed("dash")and can_dash==true and speed !=180:
		can_dash=false
		$dash_timer.start()
		speed=180
		$ability.start()
	player_update_item()	
		

func play_anim(_dir):

	if player_state=="walking":
		$AnimatedSprite2D.play("walking")
	if player_state=="idle":
		$AnimatedSprite2D.stop()


func _on_dash_timer_timeout():
	speed=100
	$dash_timer.stop()

func _on_ability_timeout():
	can_dash=true
func player_update_item():
	$"../UI".update_coin_texte()	
