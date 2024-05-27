extends CharacterBody2D


const Gravedad: float = 80.0
const Power: float = -300.0

@onready var sprite = $Sprite



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	velocity.y += Gravedad * delta
	
	volar()
	
	move_and_slide()
	
	if is_on_floor() == true:
		morir()
	
	
	
func volar() -> void:
	if Input.is_action_just_pressed("volar") == true:
		velocity.y = Power


func morir() -> void:
	sprite.stop()
	set_physics_process(false)
