if(instance_exists(obj_EnemyTroop)) target = instance_nearest(x, y, obj_EnemyTroop);
else target = noone;

spd = 8;
hsp = 0;
vsp = 0;

path = path_add();

alarm[0] = 5;