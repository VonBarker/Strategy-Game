//Destroy the grid
mp_grid_destroy(global.grid);
path_delete(global.pathfind);

//recreate the grid
event_perform(ev_create,0);