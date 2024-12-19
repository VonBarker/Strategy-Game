gridSize = 32;
gridXOffset = 0;
gridYOffset = 0;

selectedTroop = noone;

var cell_width  = 32;
var cell_height = 32;

var hcells = 12;
var vcells = 7;

global.grid = mp_grid_create(128, 32, hcells, vcells, cell_width, cell_height);

//Add Collision
//mp_grid_add_instances(global.grid, obj_collisonbox, true);

//create_path
global.pathfind = path_add();