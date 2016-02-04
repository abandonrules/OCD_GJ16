#define player_movement
///Player Movement
if (global.innerhaze_agg > 0)
{ 
    global.innerhaze_agg -= 0.005;
}
if (global.innerhaze > 0)
{
    global.innerhaze -= 0.005;
}
//Cardinal
if keyboard_check(vk_up) {
    speed = 10;
    direction = 90;
    check_task();
}

if keyboard_check(vk_down) {
    speed = 10;
    direction = 270;
    check_task();
}

if keyboard_check(vk_left) {
    speed = 10;
    direction = 180;
    check_task();
}

if keyboard_check(vk_right) {
    speed = 10;
    direction = 360;
    check_task();
}

//Diagonal

if keyboard_check(vk_up) && keyboard_check(vk_right) {
    speed = 10;
    direction = 45;
    check_task();
}

if keyboard_check(vk_up) && keyboard_check(vk_left) {
    speed = 10;
    direction = 135;
    check_task();
}

if keyboard_check(vk_down) && keyboard_check(vk_left) {
    speed = 10;
    direction = 225;
    check_task();
}

if keyboard_check(vk_down) && keyboard_check(vk_right) {
    speed = 10;
    direction = 315;
    check_task();
}



