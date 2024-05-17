extends Node3D
@onready var b = $CollisionShape3D

const VELOCITY = 40.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += transform.basis * Vector3(0, 0, -VELOCITY) * delta


func _on_timer_timeout():
	queue_free()
