/// @description Oyuncu Özellikleri

// Hareketler

sol_hareket = keyboard_check(vk_left); 
sag_hareket = keyboard_check(vk_right);
ziplama = keyboard_check_pressed(vk_space);

	


var hareket = sag_hareket - sol_hareket; 


yatay_hiz = hareket * yurume_hizi; 
dikey_hiz = dikey_hiz + yer_cekimi; 



//Yatay Collision

if (place_meeting(x+yatay_hiz, y, obj_platform)) 
{
   while (!place_meeting(x+ sign(yatay_hiz), y, obj_platform)) 
   {
        x = x + sign(yatay_hiz) 
   }
   yatay_hiz=0; 
	 
}
x = x+ yatay_hiz; 
	
//Dikey Collision

if  (place_meeting(x, y + dikey_hiz, obj_platform)) 
{
      while (!place_meeting(x, y+ sign(dikey_hiz), obj_platform))
      {
           y = y + sign(dikey_hiz); 
      }
     dikey_hiz=0;
	 
}
y = y+ dikey_hiz;

if(place_meeting(x, y+1, obj_platform) and (ziplama))
{
	dikey_hiz =- ziplama_hizi;
}

// Animasyon Değişimi	
if (!place_meeting(x,y+1,obj_platform))
{
   sprite_index = spr_oyuncu_ziplama;
   image_speed=0;
   
   if(dikey_hiz >0) image_index =1; else image_index =0;
   
}

 else
 {
	 image_speed = 1;
	 
	 if(yatay_hiz == 0)
	 {
		 sprite_index = spr_oyuncu_idle;
	 }
	 else
	 {
		 sprite_index = spr_oyuncu_kosma;
	 }
 }
 
 if (yatay_hiz != 0) image_xscale = sign(yatay_hiz);

