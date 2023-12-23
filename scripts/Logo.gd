extends Sprite2D

var num=0
var test_scale:float =1
var pos: Vector2 = Vector2.ZERO
const speed: int = 200


func testFunc():
	print('this is a test function')
	print($'..'.testArr)


# Called when the node enters the scene tree for the first time.
func _ready():
	print('Ready')
	pos = Vector2(100,200)
	position = pos
	test_scale = 2
	scale = Vector2(test_scale,test_scale)
	testFunc()
	#var rotateDeg = 45
	#rotation_degrees=rotateDeg
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#num = num+1
	pos.x += speed * delta
	position = pos
	#test_scale+=0.03
	scale = Vector2(test_scale,test_scale/2)
	#position = Vector2(num,num)
	
	pass
