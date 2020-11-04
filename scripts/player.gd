extends KinematicBody2D

var gravity = 10
var speed=180
var velocity= Vector2(0,0)
var jump_speed= 300



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _enavant():
	velocity.x = 0
	if(Input.is_action_pressed("ui_right")):
		velocity.x = speed
		
	if(Input.is_action_pressed("ui_left")):
		velocity.x = -speed
	
	if(Input.is_action_pressed("ui_select")):
		velocity.y = -jump_speed

func _process(delta):
	pass
	

func _physics_process(delta):
	_enavant()
	velocity.y = velocity.y + gravity
	velocity = move_and_slide(velocity)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
