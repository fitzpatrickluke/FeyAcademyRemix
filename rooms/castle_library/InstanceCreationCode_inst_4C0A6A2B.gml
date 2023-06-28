/*
txt_length = 18;
txt[0] = "Winx Club - Book 3";
txt[1] = "How exciting! The Winx help Stella to choose the dress she'll wear at the big Solaria party.";
txt[2] = "Meanwhile, someone is plotting something in the shadows... the Trix ally with the powerful sorcerer Valtor to conquer the Magic Dimension. Through a magic portal, they reach Andros, Aisha's world.";
txt[3] = "Stella is not well seen on Solaria. Countess Cassandra and her daughter Chimera, who aim at the throne of Solaria, envy Stella so much that they ally with Valtor. The terrible sorcerer strengthens Chimera's spells...What could happen now?";
txt[4] = "Stella's worst nightmare seems to have become real... Chimera turns her into a monster! The Winx manage to escape from the Solaria's royal guards and to rescue Stella.";
txt[5] = "In order to bring Stella back to normal, the Winx and the Specialists have to find the Mirror of Truth. Stella manages to find it and thanks to her love teardrops cried over the mirror, she goes back to normal!";
txt[6] = "At Alfea, the third school year has begun and the Winx have to go back to studying! The final exam will consist in transforming into Enchantix fairies, which will be possible only thanks to an extreme act of courage and sacrifice.";
txt[7] = "To conquer the world of Andros, Valtor turns the mermaids into monsters at his service. The Winx try in vain to reverse the spell, but they are attacked by the Trix, allied with the sorcerer.";
txt[8] = "During a fight at sea, Aisha is blinded by Valtor. The fairy decides to use the Coral Gem not to heal herself, but to save the queen Ligea, hurt by a sea monster. Because of her sacrifice, Aisha turns into an Enchantix fairy, and thanks to the fairy powder she can now see again.";
txt[9] = "Sky and Bloom's relationship is not going too well because of Diaspro. The fairy, who's always been in love with Sky, uses a magic potion to subdue the prince to her will. To Bloom's great surprise, before all the royals from the Magic Dimension, Sky announces the name of the future princess of Eraklyon: Diaspro!";
txt[10] = "Things fall apart! Diaspro accuses Bloom of being one of Valtor's spies and sends the guards against the Winx. During the fight, King Radius is in danger and Stella sacrifices herself to rescue him. This action allows her to transform into an Enchantix fairy.";
txt[11] = "Shortly afterward, Musa also gets the new power! During an attack to Alfea, the Trix hold hostage Galatea, the princess of Melody. Musa rescues her with an act of extreme courage, and because of this she also turns into an Enchantix fairy.";
txt[12] = "Poor Faragonda... Valtor turned her into an oak. The Winx run to Lynphea where there is a special water that can bring back to normal their beloved headmistress.";
txt[13] = "Once they get to Lynphea, the Winx find a bad surprise: the Trix have made the healing water black and dirty! A fight starts, and Miele, Flora's little sister, is hit by a spell and ends up in the water. Flora rescues her, transforming into an Enchantix fairy.";
txt[14] = "Andros world is in danger! Tecna saves it from catastrophe and transforms into an Enchantix fairy. But while trying to close a magic portal, she is sucked in and disappears into thin air...";
txt[15] = "Discouraged by the loss of her friend Tecna, Bloom goes on Pyros world to recover herself. Finally, she will manage to transform into an Enchantix fairy thanks to her willpower.";
txt[16] = "Timmy found out that Tecna is alive, although she is trapped into the Omega Dimension. The Winx and the Specialists go to the frozen world and rescue their friend, going back safe and sound to Alfea.";
txt[17] = "Thanks to the support of the wizard Nabu, who holds a special place in Aisha's heart, and using the Dragon Flame's power, Bloom defeats once and for all the Trix and Valtor.";

*/

txt_length = 32;
var file = file_text_open_read("books_6.txt");
txt[0] = file_text_read_string(file);
file_text_readln(file);
for(var i = 1; i < 25; i+=1)
{
	txt[i] = file_text_read_string(file);
	file_text_readln(file);
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
}
txt[25] = file_text_read_string(file);
file_text_readln(file);
for(var i = 26; i < txt_length; i+=1)
{
	txt[i] = file_text_read_string(file);
	file_text_readln(file);
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);