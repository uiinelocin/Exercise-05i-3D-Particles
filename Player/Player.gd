extends KinematicBody

onready var Camera = $Pivot/Camera

var gravity = -30
var max_speed = 8
var mouse_sensitivity = 0.002
var mouse_range = 1.2

var velocity = Vector3()

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	

func _unhandled_input(event):
	if event is InputEventMouseMotion:
		$Pivot.rotate_x(event.relative.y * mouse_sensitivity)
		rotate_y(-event.relative.x * mouse_sensitivity)
		$Pivot.rotation.x = clamp($Pivot.rotation.x, -mouse_range, mouse_range)

func _physics_process(_delta):
	if Input.is_action_just_pressed("shoot"):
		if $Pivot/RayCast.is_colliding():
			var player = AudioStreamPlayer.new()
			self.add_child(player)
			player.stream = load("res://Assets/laser.wav")
			player.play()
			$Pivot/Laser.visible = not $Pivot/Laser.visible
			var target = $Pivot/RayCast.get_collider()
			if target.is_in_group("target"):
				target.die()
				yield(get_tree().create_timer(0.8),"timeout")
				$Pivot/Laser.visible = not $Pivot/Laser.visible
