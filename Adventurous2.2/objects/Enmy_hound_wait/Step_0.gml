if (obj_player < distance_range )
	FoundHero = true;
	
if (FoundHero == true){
	if (currentHealth > 0) {
		scr_Enemy_WalkWStalk();
		}
	else 
		scr_Enemy_DeathNoFade();
}