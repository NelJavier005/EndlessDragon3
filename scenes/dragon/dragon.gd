extends CharacterBody2D


const Gravedad: float = 80.0
const Power: float = -300.0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	velocity.y += Gravedad * delta
	
	volar()
	
	move_and_slide()
	
	
	
func volar() -> void:
	if Input.is_action_just_pressed("volar") == true:
		velocity.y = Power
