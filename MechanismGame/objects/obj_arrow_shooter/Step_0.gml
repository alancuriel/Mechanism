/// @description Insert description here
// You can write your code in this editor
if(activated)
{
	with(instance_create_layer(x,y,"layer_trap",obj_arrow))
	{
		image_xscale = other.image_xscale;
		
		if(image_xscale == -1)
		{
			direction = 180;
		}
		else
		{
			direction = 0;
		}
		
		speed = other.arrowspd;
	}
	
	activated = false;
}