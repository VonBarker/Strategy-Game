if (shake) 
{ 
   shakeTime -= 1; 
   var _xval = choose(-shakeMagnitude, shakeMagnitude); 
   var _yval = choose(-shakeMagnitude, shakeMagnitude); 
   camera_set_view_pos(view_camera[0], _xval, _yval); 

   if (shakeTime <= 0) 
   { 
      shakeMagnitude -= shakeFade; 

      if (shakeMagnitude <= 0) 
      { 
         camera_set_view_pos(view_camera[0], 0, 0); 
         shake = false; 
      } 
   } 
}