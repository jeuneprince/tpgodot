extends KinematicBody2D


onready var animation = $AnimatedSprite
var speed = 200
var velocity = Vector2()
var target = Vector2()

export(NodePath) var patrol_path
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if velocity>0:
		animation.play("move")
	else:
		animation.play("defaut")
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
