extends KinematicBody2D

var gravity = 10
var speed=180
var velocity= Vector2(0,0)
var jump_speed= 300
var hp = 90


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _enavant():
	velocity.x = 0
	if(Input.is_action_pressed("ui_right")):
		velocity.x = speed
		
	if(Input.is_action_pressed("ui_left")):
		velocity.x = -speed
	
	if(Input.is_action_pressed("ui_select")) and is_on_floor():
		velocity.y = -jump_speed
	
		
func _process(delta):
	pass
	

func _physics_process(delta):
	_enavant()
	velocity.y = velocity.y + gravity
	velocity = move_and_slide(velocity, Vector2(0, -1))
var mort = false
func _on_Area2D_body_entered(body):
	hp -= 33.33
	if hp>0 :
		position.x = 63.228
		position.y = 151.65
	else :
		get_tree().change_scene("res://scenes/Control.tscn")
	
	
	


func _on_fin_body_entered(body):
	get_tree().change_scene("res://scenes/Victoire.tscn")
