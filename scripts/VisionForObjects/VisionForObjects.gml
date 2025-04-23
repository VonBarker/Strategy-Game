// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function VisionForObjects(sightRadius, target, visionCollisionObjects){
	var list = ds_list_create();
	var num = collision_circle_list(x, y, sightRadius, target, false, true, list, false);
	if (num > 0)
	{
	    for (var i = 0; i < num; ++i;)
	    {
	        var sightLine = collision_line(x, y, list[| i].x, list[| i].y, visionCollisionObjects, false, false);
			if (sightLine == noone) {
				self.targetX = target.x;
				self.targetY = target.y;
				self.sightRadius = 128;
				self.state = createPathState;
			}
			else sightRadius = 96;
	    }
	}
	else if (x != self.startX && y != self.startY) {
		self.sightRadius = 96;
		self.state = returnToStartState;
	}
	else self.state = idleState;
	ds_list_destroy(list);
}