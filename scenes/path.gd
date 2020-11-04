extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(NodePath) var patrol_path
var patrol_points
var patrol_point_index = 0
var velocity= Vector2()
# Called when the node enters the scene tree for the first time.
func _ready():
	if patrol_path:
		patrol_points = get_node(patrol_path).curve.get_baked_points()
	 # Replace with function body.

func _physics_process(delta):
	if !patrol_path:
			return
	var target = patrol_points[patrol_point_index]
	if position.distance_to(target) < 1:
		patrol_point_index = wrapi(patrol_point_index + 1,0,patrol_points.size()) 
		target = patrol_points[patrol_point_index]
	velocity = (target-position).normalized() * 100
	velocity = move_and_slide(velocity)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
