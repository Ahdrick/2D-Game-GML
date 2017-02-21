/// Put my Cloths on

x      = obj_player.x;
y      = obj_player.y;

Pce    = obj_menu.cloakEqpd;
PcMax  = 3;
Phe    = obj_menu.helmEqpd;
PheMax = 4;
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