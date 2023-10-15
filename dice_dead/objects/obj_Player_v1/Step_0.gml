//move_towards_point(target_x,target_y,spd);

if point_distance(x, y, target_x, target_y) > spd
{
    move_towards_point(target_x, target_y, spd);
}
else {
	x = target_x;
	y = target_y;
	spd = 0;
}