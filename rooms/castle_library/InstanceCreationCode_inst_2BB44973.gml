/*

txt_length = 13;
txt[0] = "Winx Club - Book 2";
txt[1] = "A new school year begins at Alfea and a new student joins the Winx Club: Aisha, the fairy of Waves.";
txt[2] = "Meanwhile, somebody is plotting in the shadows. Lord Darkar, an evil creature, wants to get hold of the Gloomy Wood Forest Codex in order to increase his powers.";
txt[3] = "In order to succeed in his intent, Lord Darkar frees the Trix from the Light Rock Monastery, and they soon become his wicked allies!";
txt[4] = "The first piece of the codex is right in the Gloomy Wood Forest, the village of the very cute Pixie fairies. Therefore, Lord Darkar kidnaps them and brings them to his palace.";
txt[5] = "Aisha, fairy of Waves, bravely tries to rescue the Pixies, but she manages to save only Piff.";
txt[6] = "Pixies and Fairies have a special relationship called BONDING. Aisha asks for the Winx support.";
txt[7] = "It's a very fierce fight between the Winx and Trix, but there comes the precious help of a winged hero. Who is this brave knight?”.";
txt[8] = "The charming hero is Avalon, a new professor at Alfea. Bloom asks him to help her.";
txt[9] = "Avalon casts a spell on Bloom to help her to see her parents but …";
txt[10] = "Bloom steals Alfea's piece of the Codex, bringing it to Lord Darkar, who now has all four of them.";
txt[11] = "Thanks to Sky and Bloom's deep love, the boy breaks Bloom's negative magic.";
txt[12] = "Once recovered, with the Winx support, Bloom defeats Lord Darkar!";
*/

txt_length = 19;
var file = file_text_open_read("books_5.txt");

txt[0] = file_text_read_string(file);
file_text_readln(file);
txt[0] = string_insert("\n",txt[0],string_length(txt[0])+1);
txt[0] += file_text_read_string(file);
file_text_readln(file);

txt[1] = file_text_read_string(file);
file_text_readln(file);
for(var i = 0; i < 7; i+=1)
{
txt[1] = string_insert("\n",txt[1],string_length(txt[1])+1);
txt[1] += file_text_read_string(file);
file_text_readln(file);
}

txt[2] = file_text_read_string(file);
file_text_readln(file);


for(var i = 3; i < txt_length; i+=1)
{
	txt[i] = file_text_read_string(file);
	file_text_readln(file);
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
	
	for(var j = 0; j < 3; j+=1)
	{
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
	txt[i] = string_insert("      ",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
	}
	
	
	
	for(var j = 0; j < 7; j+=1)
	{
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
	}
}
file_text_close(file);