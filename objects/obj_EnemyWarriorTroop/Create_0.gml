if(instance_exists(obj_Troop)) target = instance_nearest(x, y, obj_Troop);
else target = noone;

spd = 8;
hsp = 0;
vsp = 0;


path = path_add();
path_add_point(path, x, y, spd);
path_add_point(path, target.x, target.y, spd);

alarm[0] = 5;