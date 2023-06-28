/*
txt_length = 7;
txt[0] = "Creation of the Magic Dimension"
txt[1] = "The Great Dragon, Shadow Phoenix, and the Water Stars are created from the original void.";
txt[2] = "The Great Dragon uses his flames to create the universe.";
txt[3] = "Part of the Dragon's Flame mixes with the original darkness, creating a dark spark of the Dragon Fire.";
txt[4] = "After creating the whole universe, the Great Dragon rests on Domino. His fate is uncertain, but the Dragon Flame is entrusted to the Domino Royal Family.";
txt[5] = "The first witches, the Ancestral Witches, are born.";
txt[6] = "Arcadia, the first fairy, is born.";
*/
txt_length = 14;
var file = file_text_open_read("books_1.txt");
for(var i = 0; i < txt_length; i+=1)
{
	txt[i] = file_text_read_string(file);
	file_text_readln(file);
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);