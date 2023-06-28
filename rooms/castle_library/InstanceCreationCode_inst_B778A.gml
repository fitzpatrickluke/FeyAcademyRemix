/*
txt_length = 7;
txt[0] = "Mythological Figures";
txt[1] = "Arcadia - Arcadia has been stated to have been the first Fairy who flew in the Magic Dimension, which means that she is the first Fairy to have existed, and was possibly created by the Great Dragon itself, since the other inhabitants of the Golden Kingdom describe themselves as existing since the beginning of Time.";
txt[2] = "Lord Darkar - An ancient deity of pure darkness who was born in the void from before the beginning of the universe and who is the polar opposite of the Great Dragon. Therefore, while the Great Dragon is a source of light, life and energy, and represents Good, Lord Darkar absorbs energy and is the incarnation of Evil.";
txt[3] = "The Ancestral Witches - Three very ancient evil witches named named Belladonna, Liliss and Tharma who once served the Shadow Phoenix and destroyed the Realm of Domino while trying to acquire the Dragon Flame for their master. Their exact background is largely unknown, although they have been called the First Creatures of Evil by the crown of Domino and referred to as the Mothers of All Witches by Valtor and the Trix.";
txt[4] = "The Great Dragon - One of the most powerful creatures to have ever existed. From its fiery breath came the Dragon's Flame, the creating force of the Magic Dimension, and it is therefore a kind of creator god or deity of the Magic Dimension. The Dragon is an embodiment of Good versus Evil, with the Shadow Phoenix, an ancient being of pure darkness who absorbs energy, being its polar opposite. The Water Stars also contain an opposite force to that of the Dragon's power.";
txt[5] = "The Trix -  The group is made up of three direct descendants of the Ancestral Witches, the most powerful and evil witches to have ever existed. They focus on what they are best at: acting maliciously and joining forces with the darkest villains the Magic Dimension has to offer.";
txt[6] = "Valtor - When the Great Dragon created the Magic Dimension, a piece of its flame mixed with the original darkness. This piece of the Dragon's Flame was later found by the Ancestresses, who morphed it into the form of a boy and raised him as if he were their own son. Wishing to make him the most powerful wizard in all of existence, the Ancestresses sent him to conquer all possible dimensions once he came of age.";
*/

txt_length = 9;
var file = file_text_open_read("books_2.txt");
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