extends TileMap

export var bounce:float
export var impulse_multiplier:float
var ignore_collission=false

func apply_effect(normal:Vector2,delta):
	var player_force:=Vector2(levelman.player.current_x_speed,levelman.player.current_y_speed)
	player_force=player_force.rotated(normal.angle())
	player_force.x=-bounce*sign(player_force.x)
	player_force.y*=impulse_multiplier
	player_force=player_force.rotated(-normal.angle())
	return player_force
