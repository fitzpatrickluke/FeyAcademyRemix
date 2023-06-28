/*
txt_length = 14;
txt[0] = "Winx Club - Book 4";
txt[1] = "A new year begins at the Alfea school and this time, the Winx find out in the Book of Fairies that they have a new goal to achieve: the Believix power!";
txt[2] = "The last Fairy of Earth risks being imprisoned by the evil Wizards of the Black Circle. Before it's too late, the Winx have to find her and protect her.";
txt[3] = "On Earth magic has disappeared and, in order to make people believe in fairies again, the Winx move to Gardenia and open a special shop where fairy pets can be adopted.";
txt[4] = "The Winx manage to find the last fairy of Earth, Roxy, and, thanks to her help, they become Believix fairies!";
txt[5] = "Roxy and the Winx find a mysterious White Circle and they find out it is actually the portal to the dimension where all the Earth fairies are held prisoner!";
txt[6] = "The wizards are determined to seize the White Circle, but the Believix magic is unstoppable and even the people of Gardenia start to believe in fairies again, strengthening the Winx!";
txt[7] = "In order to put the people against the fairies, the wizards transform the arrogant Mitzi and her friends in false fairies, ready to do everything to shed a bad light on the Winx...who, however, won't stand there and watch.";
txt[8] = "On Earth, Musa is making her biggest dream come true, becoming a singer: the first rock band entirely made of fairies is born!";
txt[9] = "The Winx and Roxy fly on the Tir Nan Og island and, with the White Circle, manage to free queen Morgana and the Earth fairies! The latter, though, want to take their revenge on the wizards who trapped them, and on the earthlings, who have never believed in them!";
txt[10] = "The Winx and Roxy try to convince the Earth fairies to stop their revenge, but with no success: Aurora, the Fairy of the North, traps them in her castle. Bloom will show Aurora that not only the Earth but also its people need to be saved.";
txt[11] = "The Wizards pretend to feel sorry to cast a curse on the Earth fairies and suck them up into the void, with no return.";
txt[12] = "With an act of extreme courage, Nabu sacrifices himself to save the fairies from a terrible end. Desperate, Aisha, wants to get a revenge for Nabu's death, taking out the wizards at all costs.";
txt[13] = "Bloom and the Winx convince Aisha that seeking for revenge is wrong. Together, they defeat the wizards and bring back peace on the Earth, making the fairy magic spread once again among the people from all over the world.";
*/


txt_length = 1;
var file = file_text_open_read("books_7.txt");
txt[0] = file_text_read_string(file);
file_text_readln(file);
for(var i = 1; i < 8; i+=1)
{
	txt[0] = string_insert("\n",txt[0],string_length(txt[0])+1);
	txt[0] += file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);
