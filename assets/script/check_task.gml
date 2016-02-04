#define check_task
global.task_x = global.task[global.task_num, 1];
global.task_y = global.task[global.task_num, 2];
global.task_distance_prev = floor(point_distance(obj_player.x, obj_player.y, global.task_x, global.task_y));
if (global.task_distance_prev > global.task_distance)
    {
     global.innerhaze_agg += 0.05;   
    }
var global.task_distance = global.task_distance_prev;
draw_text(145,45,string(obj_player.x)+ string(obj_player.y)+ " "+ string(global.innerhaze_agg) + " " + string(global.innerhaze));
draw_text(132, 32, "FPS = " + string(fps)+" "+ string(global.task_x) +" "+ string(global.task_y)+" "+ string(global.task_num)+" "+string(global.task_distance) );

if ( global.task_distance < global.task_thresh )
    {
        global.task_num += 1 ;
        if ( global.task_num = global.task_max ) 
            {
            room_restart();
            }
        global.innerhaze = floor(global.innerhaze);
        global.innerhaze_agg = floor(global.innerhaze_agg);
    } else {
 //global.innerhaze_agg += 0.05;
 }
//Outer haze
//draw_sprite_ext(spr_haze,0, view_xport, view_yport,1,1,0,c_white,global.hazeViz);
//Inner haze
if (global.innerhaze+global.innerhaze_agg >= 1)
    {
 room_restart();
    } else {
    //draw_sprite_ext(spr_innerhaze,0, view_xport +320, view_yport +180,1,1,0,c_white,speed = clamp(global.innerhaze+global.innerhaze_agg,0, 1));
    draw_sprite_ext(spr_innerhaze,0, view_xport +320, view_yport +180,1,1,0,c_white,clamp(global.innerhaze+global.innerhaze_agg,0, 1));
}

