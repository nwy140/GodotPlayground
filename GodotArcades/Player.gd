extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 1000

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)

func _physics_process(delta):
	if Input.action_press("ui_left"):
		move_and_collide(Vector2(-speed*delta,0))
	elif Input.action_press("ui_right"):
		move_and_collide(Vector2(speed*delta,0))