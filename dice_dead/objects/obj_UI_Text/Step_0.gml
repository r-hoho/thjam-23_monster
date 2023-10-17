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

// Draw text at the converted Draw GUI coordinates

