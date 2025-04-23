gridSize = 32;
gridXOffset = 0;
gridYOffset = 0;

selectedTroop = noone;

var cell_width  = 32;
var cell_height = 32;

var hcells = 12;
var vcells = 7;

global.grid = mp_grid_create(112, 48, hcells, vcells, cell_width, cell_height);
mp_grid_add_instances(global.grid, obj_OutOfBounds, false);
//Brute force bad fix for issue with top and left out of bounds walls
mp_grid_clear_rectangle(global.grid, 113, 49, 495, 49);
mp_grid_clear_rectangle(global.grid, 113, 49, 113, 271);

mp_grid_add_instances(global.grid, obj_Collision, true);