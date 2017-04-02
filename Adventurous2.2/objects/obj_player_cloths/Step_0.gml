/// Put my Cloths on

x      = obj_player.x;
y      = obj_player.y;

Pce    = obj_menu.cloakEqpd;
PcMax  = 5; // sam changed this
Phe    = obj_menu.helmEqpd;
PheMax = 6; // sam changed this
Pse    = obj_menu.shieldEqpd;
PsMax  = 4;
Pswe   = obj_menu.swordEqpd;
PswMax = 2;

PxS  = obj_player.image_xscale;
PiS  = obj_player.image_speed;
PiI  = obj_player.image_index;

player_cloak(Pce,PcMax);
player_helm(Phe,PheMax);
player_shield(Pse,PsMax);
player_sword(Pswe,PswMax);