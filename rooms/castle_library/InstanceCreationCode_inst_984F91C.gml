/*
txt_length = 17;
txt[0] = "Winx Club - Book 1";
txt[1] = "Bloom is a girl like many others living in Gardenia, on Earth, with her little bunny Kiko. Her biggest dream is to become a fairy...";
txt[2] = "One day Bloom saves a very beautiful girl with wings from an Ogre, discovering a big magical power inside herself.";
txt[3] = "The girl Bloom saved, introduces herself: her name is Stella, the Fairy of Shining Sun!";
txt[4] = "Stella invites Bloom to follow her to Alfea, the college for fairies… At last her dream is becoming true!";
txt[5] = "Finally it is time to leave Gardenia and move to Alfea… Bloom’s new life is going to start!";
txt[6] = "The Bloom’s new fairies friends are really nice: Flora, the Fairy of Nature; Musa, the fairy of Music; Tecna, the Fairy of Technology; Stella, the Fairy of Shining Sun!";
txt[7] = "Bloom’s new life is really super… even if it is not going like it should be! Bloom is attacked by the Trix, three witches that seem interested on her power.";
txt[8] = "Fortunately Bloom can rely on her new friends and suggests them to give a name to their group: they will call themselves Winx!";
txt[9] = "Love at first sight! Bloom knows an handsome boy, blond with blue eyes like the sky. His name is Sky and Bloom falls immediately in love with him!";
txt[10] = "Sky is the prince of Eraklyon kingdom and a Specialist, that is a student of Redfountain school of magic! Always on his side are the Specialists: Brandon, Riven and Timmy.";
txt[11] = "Bloom learns that Mike and Vanessa are her adoptive parents: Mike found her when she was a baby, wrapped in flames that were even protecting her… a real mystery!";
txt[12] = "In the meantime the Trix, even more resolute to take possession of Bloom’s Dragon flame power, trap Mike and Vanessa and blackmail the fairy!";
txt[13] = "To save her adoptive parents, Bloom lets the witches to take her power.";
txt[14] = "Bloom hears a magic voice that leads her to lake Roccaluce: There she meets Daphne, the nynph of Magix, who not only reveals to be her sister, but also that the Dragon Flame has always been inside Bloom.";
txt[15] = "Bloom finds out the truth about her past: she is the princess of Domino, the Dragon Flame kingdom. Once a wonderful place, now it is a deserted moor of ice. Its rulers, Bloom’s birth parents, disappeared into thin air.";
txt[16] = "Thanks to the power of Dragon Flame, Bloom defeats the Trix before Alfea falls in their hands: There is a big party in honor of Bloom, the new heroine of the Magic Dimension! However, Winx ‘s adventures are not at the end yet…";
*/

txt_length = 35;
var file = file_text_open_read("books_4.txt");
for(var i = 0; i < txt_length; i+=1)
{
	txt[i] = file_text_read_string(file);
	file_text_readln(file);
	txt[i] = string_insert("\n",txt[i],string_length(txt[i])+1);
	txt[i] += file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);