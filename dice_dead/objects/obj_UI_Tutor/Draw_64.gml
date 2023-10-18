draw_set_font(fn_m6_32);
draw_text(190,150,"Select Action from Dice");
draw_text(800,150,"KILL or be KILLED");


// Game room size
var roomWidth = 320;
var roomHeight = 180;

// Viewport resolution
var viewportWidth = 1280;
var viewportHeight = 720;

// Example object's position in the room
var x1 = 33;
var y1 = 70;

// Convert the object's position to the Draw GUI coordinates
var drawGUI_X = (viewportWidth / roomWidth) * x1;
var drawGUI_Y = (viewportHeight / roomHeight) * y1;

draw_text(drawGUI_X, drawGUI_Y, "MOVE");

// Example object's position in the room
var x2 = 145;
var y2 = 70;

// Convert the object's position to the Draw GUI coordinates
var drawGUI_X2 = (viewportWidth / roomWidth) * x2;
var drawGUI_Y2 = (viewportHeight / roomHeight) * y2;

draw_text(drawGUI_X2, drawGUI_Y2, "SHOOT");

// Example object's position in the room
var x3 = 245;
var y3 = 70;

// Convert the object's position to the Draw GUI coordinates
var drawGUI_X3 = (viewportWidth / roomWidth) * x3;
var drawGUI_Y3 = (viewportHeight / roomHeight) * y3;

draw_text(drawGUI_X3, drawGUI_Y3, "RELOAD");

// Example object's position in the room
var x3 = 15;
var y3 = 140;

// Convert the object's position to the Draw GUI coordinates
var drawGUI_X3 = (viewportWidth / roomWidth) * x3;
var drawGUI_Y3 = (viewportHeight / roomHeight) * y3;

draw_set_font(fn_m6_16);
draw_text(drawGUI_X3, drawGUI_Y3, "1 Value = 1 Movement Point");

// Example object's position in the room
var x3 = 140;
var y3 = 140;

// Convert the object's position to the Draw GUI coordinates
var drawGUI_X3 = (viewportWidth / roomWidth) * x3;
var drawGUI_Y3 = (viewportHeight / roomHeight) * y3;

draw_set_font(fn_m6_16);
draw_text(drawGUI_X3, drawGUI_Y3, "1 Dice = 1 Shot!");

var x3 = 240;
var y3 = 140;

// Convert the object's position to the Draw GUI coordinates
var drawGUI_X3 = (viewportWidth / roomWidth) * x3;
var drawGUI_Y3 = (viewportHeight / roomHeight) * y3;

draw_set_font(fn_m6_16);
draw_text(drawGUI_X3, drawGUI_Y3, "1 Value = 1 Ammo");
draw_text(drawGUI_X3+20, drawGUI_Y3+50, "MAX 6 Ammo");

draw_set_font(fn_m6_32);
draw_text(drawGUI_X3-100, drawGUI_Y3+100, "Press [ANY] Key to DIE");