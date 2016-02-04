#define global_setup
global.hazeViz = 1;
global.innerhaze = 0;
global.innerhaze_agg = 0;
global.calendar = 2;
global.task_num = 0;
global.task_thresh = 50;
global.task[0, 3] = "playerstart"; //
global.task[0, 2] = 684; //y 
global.task[0, 1] = 544; //x
global.task[0, 0] = "obj_player"; //object
global.task_distance = 0;
global.task[1, 3] = "r4bed" ; //
global.task[1, 2] = 383; //y position
global.task[1, 1] = 632; //x position
global.task[1, 0] = "bed"; //Object

global.task[2, 3] = "r4door" ; //
global.task[2, 2] = 854; //y position
global.task[2, 1] = 825; //x position
global.task[2, 0] = "door"; //Object

global.task[3, 3] = "r6bed"; //
global.task[3, 2] = 684; //y position
global.task[3, 1] = 1245; //x position
global.task[3, 0] = "bed"; //Object

global.task[4, 3] = "r6bed"; //
global.task[4, 2] = 703; //y position
global.task[4, 1] = 977; //x position
global.task[4, 0] = "bed"; //Object
global.task_x = global.task[global.task_num, 1];
global.task_y = global.task[global.task_num, 2];
global.task_max = array_height_2d(global.task);
//Outer haze
draw_sprite_ext(spr_haze,0, view_xport, view_yport,1,1,0,c_white,global.hazeViz);
//Inner haze
draw_sprite_ext(spr_innerhaze,0, view_xport +320, view_yport +180,1,1,0,c_white,global.innerhaze);

