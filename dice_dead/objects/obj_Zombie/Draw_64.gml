// Game room size
var roomWidth = 320;
var roomHeight = 180;

// Viewport resolution
var viewportWidth = 1280;
var viewportHeight = 720;

// Example object's position in the room
var objPlayerX = x;
var objPlayerY = y;

// Convert the object's position to the Draw GUI coordinates
var drawGUI_X = (viewportWidth / roomWidth) * objPlayerX;
var drawGUI_Y = (viewportHeight / roomHeight) * objPlayerY;

if (_drawAP == 1) {

	draw_set_font(fn_m6_16);
	draw_text(drawGUI_X+10, drawGUI_Y+20,"AP: "+string(zombie_AP));
	
}