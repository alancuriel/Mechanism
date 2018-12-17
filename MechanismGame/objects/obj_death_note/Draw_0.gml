

if(drawText)
{
	draw_sprite(spr_text_box,0,x,y);


	//text
	draw_set_font(fnt_dialog);
	draw_text_ext(x,y,dialogString, stringHeight, box_width);
}
else
{
	draw_self();
}