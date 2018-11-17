if(start >= stepsActive)
{
	instance_destroy();
}
start++;
if(angleDir >= 1) image_angle+= 10; else image_angle -= 10;
