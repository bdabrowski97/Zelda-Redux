/// @description Invincibility Flash
if (invincibility == true) {
   for (i = 0; i != 120; i++) {
   gpu_set_fog(true, c_white, 0, 0);
   draw_self();
   gpu_set_fog(false, c_white, 0, 0);
   }
}

else {
draw_self();
}