/// Put my helm on

x      = obj_player.x;
y      = obj_player.y;

Phe    = obj_menu.helmEqpd;
PheMax = 1; // sam changed this

PxS  = obj_player.image_xscale; // PxS = players x scale
PiS  = obj_player.image_speed;  // PiS = player image speed
PiI  = obj_player.image_index;  // PiI = player image index
PsI  = obj_player.sprite_index; // PsI = player sprite index

player_helm_overlay(Phe,PheMax);

