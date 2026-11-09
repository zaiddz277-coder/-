extends Node2D
var rng =RandomNumberGenerator.new()
var random=0
var chest_open=false
var can_take=false
var dinar=preload("res://scence/coin_collectable.tscn")
func _ready():
	rng.randi_range(1,8)	
	random=rng.randi_range(1,8)	
	print(random)
func _process(delta):
	if can_take==true:
		if Input.is_action_just_pressed("take") and chest_open== false:
			$AnimatedSprite2D.play("chest_open")
			chest_open=true
			if random <=4:
				coin_drop($Marker2D)
				coin_drop($Marker2D2)
				coin_drop($Marker2D3)
			else:	
				coin_drop($Marker2D)
				coin_drop($Marker2D2)
				coin_drop($Marker2D3)	
				coin_drop($Marker2D4)	
				coin_drop($Marker2D5)	
				coin_drop($Marker2D6)
				coin_drop($Marker2D7)		
func _on_area_2d_body_entered(body):
	can_take=true
func coin_drop(mark):
	var coin_instate=dinar.instantiate()
	coin_instate.global_position=mark.global_position
	get_parent().add_child(coin_instate)
