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

draw_text(drawGUI_X, drawGUI_Y, "NO AMMO!");