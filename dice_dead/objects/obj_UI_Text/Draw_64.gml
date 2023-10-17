draw_set_font(fn_m6_32);
draw_text(962,640,"AMMO"); //+string(global.ammo)+" /6");

draw_text(1141,640,"MOVE"); //+string(global.ammo)+" /6");

draw_set_font(fn_m6_16);

// Game room size
var roomWidth = 320;
var roomHeight = 180;

// Viewport resolution
var viewportWidth = 1280;
var viewportHeight = 720;

// Example object's position in the room
var objPlayerX = 265;
var objPlayerY = 160;

// Convert the object's position to the Draw GUI coordinates
var drawGUI_X = (viewportWidth / roomWidth) * objPlayerX;
var drawGUI_Y = (viewportHeight / roomHeight) * objPlayerY;

//draw_text(drawGUI_X, drawGUI_Y, "Hello, world!");