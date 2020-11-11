extends Node2D



var shield_up = true
var balle = preload("res://scenes/life.tscn")
onready var life = get_node("life/ColorRect/ProgressBar")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_fin_body_entered(body):
	get_tree().change_scene("res://scenes/Control.tscn")
