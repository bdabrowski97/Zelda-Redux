/// @description Update Camera


//Update Destination
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

//Update Object Position
x += (xTo - x) / 25;
y += (yTo - y) /25;

//Keep Camera Center Inside Room
x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_width-view_w_half);

//Update Camera View
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

