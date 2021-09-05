extends Spatial


## Variables ##
export var moveCooldown := 0.1

var cooldownTimer := 0;
var onCooldown := false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !onCooldown:
		if Input.is_action_just_pressed("ui_left"):
			translation.x -= 2
		elif Input.is_action_just_pressed("ui_right"):
			translation.x += 2
		translation.x = clamp(translation.x, -2, 2)
	
	elif cooldownTimer >= moveCooldown:
		cooldownTimer = 0;
		onCooldown = false;
	else:
		cooldownTimer += delta;
