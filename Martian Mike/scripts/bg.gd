extends ParallaxBackground

@export var scroll_speed = 15
@export var bg_texture: CompressedTexture2D = preload("res://assets/textures/bg/Gray.png")

@onready var sprite = $ParallaxLayer/Sprite2D

func _ready():
	sprite.texture = bg_texture
	
func _process(delta):
	if sprite.region_rect.position > Vector2(64, 64):
		sprite.region_rect.position = Vector2.ZERO
	sprite.region_rect.position += delta * Vector2(scroll_speed, scroll_speed)
	
