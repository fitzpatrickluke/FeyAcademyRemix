/*
txt_length = 11;
txt[0] = "Realms of the Magical Dimension";
txt[1] = "Andros is the realm of oceans and is thusly connected to all the oceans of other realms within the Magic Dimension. It is also the home of mermaids and tritons.";
txt[2] = "Domino is a realm that holds the greatest amount of influence and importance within the Magic Dimension thanks to it being the resting place of the legendary Great Dragon.";
txt[3] = "Dyamond  was once a vibrant place, very green, full of crystals and life. That is until an evil witch overthrew its Queen and became their new ruler, making it a very cold place, covered with ice and snow.";
txt[4] = "Eraklyon is a planet within the Magic Dimension that holds a notably significant monarchy compared to the rest that can be found within the Magic Dimension.";
txt[5] = "Earth was once protected and ruled by fairies, but after they were sealed away by the Wizards of the Black Circle, chaos, wars, and intolerance broke out. The people of Earth moved on forgetting all about magic, cutting off the Earth from the rest of the Magic Dimension.";
txt[6] = "Linphea is a realm of closely connected to its nature, which shows through the abundance of magical plant and animal life it has over other realms in the Magic Dimension. The inhabitants of Linphea live their lives maintaining a close connection with the nature around them to preserve its beauty and show their respect.";
txt[7] = "Magix is a magical planet as well as the name of the major city located on it. Magix is located at the center of the Magic Dimension, making it its capital, as well as the Crossroads to All Magical Dimensions.";
txt[8] = "Melody is the realm of music, for which many of the inhabitants are naturally inclined toward more than other people in the entire Magic Dimension.";
txt[9] = "Solaria is the realm of the Sun, the Moon, and the Stars as well as possibly one of the brightest planets in the entire Magic Dimension.";
txt[10] = "Zenith is the realm of technology and, as a result, is heavily integrated and dependent on it.";
*/

txt_length = 12;
var file = file_text_open_read("books_3.txt");
for(var i = 0; i < txt_length; i+=1)
{
	txt[i] = file_text_read_string(file);
	file_text_readln(file);
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
	
}
file_text_close(file);