<?php
/**
 * @version		$Id: language.php 15628 2010-03-27 05:20:29Z infograf768 $
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

/**
 * en-GB localise class
 *
 * @package		Joomla.Site
 * @since		1.6
 */
abstract class uk_UALocalise {
	/**
	 * Returns the potential suffixes for a specific number of items
	 *
	 * @param	int $count  The number of items.
	 * @return	array  An array of potential suffixes.
	 * @since	1.6
	 */
	public static function getPluralSuffixes($count) {
		if ($count == 0) {
			$return =  array('0');
		}
		elseif($count == 1) {
			$return =  array('1');
		}
		else {
			$return = array('MORE');
		}
		return $return;
	}

	public static function transliterate($string)
	{
		$str = JString::strtolower($string);

		$glyph_array = array(
			'a' => 'а,à,á,â,ã,ä,å,ā,ă,ą,ḁ,α,ά',
            'ae'=> 'æ',
			'b' => 'б,β',
			'v' => 'в',
			'g' => 'г,ґ,ğ,ĝ,ğ,ġ,ģ,γ',
			'd' => 'д,ď,đ,Ð,ђ,δ,ð',
			'e' => 'е,є,э,è,é,ê,ē,ĕ,ė,ę,ě,ε,έ',
			'jo' => 'ё',
			'zh' => 'ж',
			'z' => 'з,ź,ż,ž,ζ',
			'i' => 'и,і,ì,î,ï,ı,ĩ,ī,ĭ,į,η,ή',
			'ji' => 'ї',
            'ij' => 'ĳ',
            'j' => 'ĵ',
			'y' => 'й',
			'k' => 'к,ķ,ĸ',
			'l' => 'л,ĺ,ļ,ľ,ŀ,ł,λ',
            'lj' => 'љ',
			'm' => 'м,μ',
			'n' => 'н,ñ,ņ,ň,ŉ,ŋ,ν',
            'nj' => 'њ',
			'o' => 'о,ò,ó,ô,õ,ø,ō,ŏ,ő,ό,ω,ώ',
            'oe' => 'œ,ö',
			'p' => 'п,π',
            'ph' => 'φ',
            'ps' => 'ψ',
			'r' => 'р,ŕ,ŗ,ř,ρ,σ,ς',
			's' => 'с,ś,ŕ,ŗ,ř,р,ρ,σ,ς',
            'ss' => 'ß,ſ',
			't' => 'т,ţ,ť,ŧ,τ',
            'th' => 'θ',
            'th' => 'θ',
			'u' => 'у,ù,ú,û,ü,ũ,ū,ŭ,ů,ű,ų',
            'w' => 'ŵ',
            'x' => 'χ,ξ',
			'f' => 'ф,ƒ',
			'kh' => 'х',
            'h' => 'ĥ,ħ,Ħ',
			'ts' => 'ц,ç,ć,ĉ,ċ,č,ћ',
			'ch' => 'ч',
			'sh' => 'ш',
			'shch' => 'щ',
			'' => 'ъ,ь',
			'y' => 'ы,ý,þ,ÿ,ŷ',
			'yu' => 'ю',
			'ya' => 'я'
		);

		foreach ($glyph_array as $letter => $glyphs) {
			$glyphs = explode(',', $glyphs);
			$str = str_replace($glyphs, $letter, $str);
		}

		return $str;
	}

	/**
	 * Returns the ignored search words
	 *
	 * @return	array  An array of ignored search words.
	 * @since	1.6
	 */
	public static function getIgnoredSearchWords() {
		$search_ignore = array();
		$search_ignore[] = 'href';
		$search_ignore[] = 'lol';
		$search_ignore[] = 'www';
		$search_ignore[] = 'а';
		$search_ignore[] = 'в';
		$search_ignore[] = 'вас';
		$search_ignore[] = 'вам';
		$search_ignore[] = 'вами';
		$search_ignore[] = 'ваш';
		$search_ignore[] = 'ваша';
		$search_ignore[] = 'ваше';
		$search_ignore[] = 'ваши';
		$search_ignore[] = 'вашим';
		$search_ignore[] = 'вашими';
		$search_ignore[] = 'ваших';
		$search_ignore[] = 'вашу';
		$search_ignore[] = 'все';
		$search_ignore[] = 'все-таки';
		$search_ignore[] = 'всяких';
		$search_ignore[] = 'всякого';
		$search_ignore[] = 'всякому';
		$search_ignore[] = 'да';
		$search_ignore[] = 'далеко';
		$search_ignore[] = 'день';
		$search_ignore[] = 'для';
		$search_ignore[] = 'днем';
		$search_ignore[] = 'дню';
		$search_ignore[] = 'дня';
		$search_ignore[] = 'дням';
		$search_ignore[] = 'днями';
		$search_ignore[] = 'днях';
		$search_ignore[] = 'до';
		$search_ignore[] = 'дома';
		$search_ignore[] = 'дому';
		$search_ignore[] = 'же';
		$search_ignore[] = 'за';
		$search_ignore[] = 'захочу';
		$search_ignore[] = 'кого';
		$search_ignore[] = 'ком';
		$search_ignore[] = 'кому';
		$search_ignore[] = 'куда';
		$search_ignore[] = 'лол';
		$search_ignore[] = 'мир';
		$search_ignore[] = 'мог';
		$search_ignore[] = 'могла';
		$search_ignore[] = 'могло';
		$search_ignore[] = 'на';
		$search_ignore[] = 'над';
		$search_ignore[] = 'назад';
		$search_ignore[] = 'нас';
		$search_ignore[] = 'нам';
		$search_ignore[] = 'нами';
		$search_ignore[] = 'наш';
		$search_ignore[] = 'наша';
		$search_ignore[] = 'наше';
		$search_ignore[] = 'не';
		$search_ignore[] = 'ну';
		$search_ignore[] = 'о';
		$search_ignore[] = 'об';
		$search_ignore[] = 'от';
		$search_ignore[] = 'по';
		$search_ignore[] = 'пор';
		$search_ignore[] = 'пора';
		$search_ignore[] = 'про';
		$search_ignore[] = 'раз';
		$search_ignore[] = 'сам';
		$search_ignore[] = 'сама';
		$search_ignore[] = 'самих';
		$search_ignore[] = 'само';
		$search_ignore[] = 'самого';
		$search_ignore[] = 'саму';
		$search_ignore[] = 'скоро';
		$search_ignore[] = 'так';
		$search_ignore[] = 'те';
		$search_ignore[] = 'того';
		$search_ignore[] = 'тоже';
		$search_ignore[] = 'той';
		$search_ignore[] = 'туда';
		$search_ignore[] = 'у';
		$search_ignore[] = 'хочу';
		$search_ignore[] = 'через';
		$search_ignore[] = 'аби';
		$search_ignore[] = 'абикуди';
		$search_ignore[] = 'абияк';
		$search_ignore[] = 'або';
		$search_ignore[] = 'але';
		$search_ignore[] = 'без';
		$search_ignore[] = 'би';
		$search_ignore[] = 'біля';
		$search_ignore[] = 'більш';
		$search_ignore[] = 'буде';
		$search_ignore[] = 'будемо';
		$search_ignore[] = 'буду';
		$search_ignore[] = 'будуть';
		$search_ignore[] = 'будь';
		$search_ignore[] = 'коли';
		$search_ignore[] = 'були';
		$search_ignore[] = 'було';
		$search_ignore[] = 'бути';
		$search_ignore[] = 'вас';
		$search_ignore[] = 'ваш';
		$search_ignore[] = 'вдалині';
		$search_ignore[] = 'верх';
		$search_ignore[] = 'весь';
		$search_ignore[] = 'вже';
		$search_ignore[] = 'ви';
		$search_ignore[] = 'вигляд';
		$search_ignore[] = 'видно';
		$search_ignore[] = 'вищі';
		$search_ignore[] = 'від';
		$search_ignore[] = 'відноситься';
		$search_ignore[] = 'відразу';
		$search_ignore[] = 'він';
		$search_ignore[] = 'вниз';
		$search_ignore[] = 'внизу';
		$search_ignore[] = 'вона';
		$search_ignore[] = 'вони';
		$search_ignore[] = 'врівень';
		$search_ignore[] = 'все';
		$search_ignore[] = 'всередину';
		$search_ignore[] = 'все';
		$search_ignore[] = 'таки';
		$search_ignore[] = 'всупереч';
		$search_ignore[] = 'всього';
		$search_ignore[] = 'далі';
		$search_ignore[] = 'де';
		$search_ignore[] = 'декілька';
		$search_ignore[] = 'деколи';
		$search_ignore[] = 'де';
		$search_ignore[] = 'небудь';
		$search_ignore[] = 'десь';
		$search_ignore[] = 'дехто';
		$search_ignore[] = 'дечий';
		$search_ignore[] = 'дещо';
		$search_ignore[] = 'деякий';
		$search_ignore[] = 'для';
		$search_ignore[] = 'до';
		$search_ignore[] = 'доки';
		$search_ignore[] = 'є';
		$search_ignore[] = 'ж';
		$search_ignore[] = 'жоден';
		$search_ignore[] = 'з';
		$search_ignore[] = 'за';
		$search_ignore[] = 'замість';
		$search_ignore[] = 'зате';
		$search_ignore[] = 'звідки';
		$search_ignore[] = 'звідки-небудь';
		$search_ignore[] = 'звідкись';
		$search_ignore[] = 'звідси';
		$search_ignore[] = 'згідно';
		$search_ignore[] = 'знов';
		$search_ignore[] = 'знову';
		$search_ignore[] = 'зовні';
		$search_ignore[] = 'зовсім';
		$search_ignore[] = 'і';
		$search_ignore[] = 'із';
		$search_ignore[] = 'за';
		$search_ignore[] = 'інакше';
		$search_ignore[] = 'інколи';
		$search_ignore[] = 'інших';
		$search_ignore[] = 'інші';
		$search_ignore[] = 'її';
		$search_ignore[] = 'їх';
		$search_ignore[] = 'його';
		$search_ignore[] = 'йому';
		$search_ignore[] = 'когось';
		$search_ignore[] = 'коли';
		$search_ignore[] = 'коли';
		$search_ignore[] = 'колись';
		$search_ignore[] = 'коротко';
		$search_ignore[] = 'котрий';
		$search_ignore[] = 'котрийсь';
		$search_ignore[] = 'крізь';
		$search_ignore[] = 'куди';
		$search_ignore[] = 'куди';
		$search_ignore[] = 'кудись';
		$search_ignore[] = 'ледве';
		$search_ignore[] = 'ледь';
		$search_ignore[] = 'лише';
		$search_ignore[] = 'майже';
		$search_ignore[] = 'мало';
		$search_ignore[] = 'ми';
		$search_ignore[] = 'мимо';
		$search_ignore[] = 'між';
		$search_ignore[] = 'містить';
		$search_ignore[] = 'містить';
		$search_ignore[] = 'може';
		$search_ignore[] = 'можна';
		$search_ignore[] = 'на';
		$search_ignore[] = 'набагато';
		$search_ignore[] = 'навздогін';
		$search_ignore[] = 'навіщо';
		$search_ignore[] = 'навіщось';
		$search_ignore[] = 'навряд';
		$search_ignore[] = 'чи';
		$search_ignore[] = 'над';
		$search_ignore[] = 'надалі';
		$search_ignore[] = 'назад';
		$search_ignore[] = 'нарізно';
		$search_ignore[] = 'наскільки';
		$search_ignore[] = 'настільки';
		$search_ignore[] = 'наш';
		$search_ignore[] = 'не';
		$search_ignore[] = 'небагато';
		$search_ignore[] = 'немало';
		$search_ignore[] = 'ним';
		$search_ignore[] = 'ні';
		$search_ignore[] = 'якому';
		$search_ignore[] = 'разі';
		$search_ignore[] = 'раз';
		$search_ignore[] = 'ніби';
		$search_ignore[] = 'ніде';
		$search_ignore[] = 'ніколи';
		$search_ignore[] = 'нікуди';
		$search_ignore[] = 'ніскільки';
		$search_ignore[] = 'ніхто';
		$search_ignore[] = 'нічий';
		$search_ignore[] = 'нічого';
		$search_ignore[] = 'ніщо';
		$search_ignore[] = 'обоє';
		$search_ignore[] = 'окрім';
		$search_ignore[] = 'оскільки';
		$search_ignore[] = 'особливо';
		$search_ignore[] = 'остільки';
		$search_ignore[] = 'ось';
		$search_ignore[] = 'перед';
		$search_ignore[] = 'під';
		$search_ignore[] = 'пізніше';
		$search_ignore[] = 'після';
		$search_ignore[] = 'по';
		$search_ignore[] = 'поблизу';
		$search_ignore[] = 'повно';
		$search_ignore[] = 'подекуди';
		$search_ignore[] = 'полягає';
		$search_ignore[] = 'помалу';
		$search_ignore[] = 'поряд';
		$search_ignore[] = 'своєму';
		$search_ignore[] = 'посередині';
		$search_ignore[] = 'потім';
		$search_ignore[] = 'представляє';
		$search_ignore[] = 'представляють';
		$search_ignore[] = 'при';
		$search_ignore[] = 'про';
		$search_ignore[] = 'просто';
		$search_ignore[] = 'проте';
		$search_ignore[] = 'проти';
		$search_ignore[] = 'прямо';
		$search_ignore[] = 'ради';
		$search_ignore[] = 'разом';
		$search_ignore[] = 'раніше';
		$search_ignore[] = 'раптом';
		$search_ignore[] = 'своїми очима';
		$search_ignore[] = 'серед';
		$search_ignore[] = 'скільки';
		$search_ignore[] = 'скількись';
		$search_ignore[] = 'складно';
		$search_ignore[] = 'собі';
		$search_ignore[] = 'собою';
		$search_ignore[] = 'спереду';
		$search_ignore[] = 'спершу';
		$search_ignore[] = 'спочатку';
		$search_ignore[] = 'стільки';
		$search_ignore[] = 'суцільно';
		$search_ignore[] = 'та';
		$search_ignore[] = 'так';
		$search_ignore[] = 'так що';
		$search_ignore[] = 'такий';
		$search_ignore[] = 'також';
		$search_ignore[] = 'там';
		$search_ignore[] = 'те';
		$search_ignore[] = 'теж';
		$search_ignore[] = 'то';
		$search_ignore[] = 'хіба';
		$search_ignore[] = 'того';
		$search_ignore[] = 'тоді';
		$search_ignore[] = 'той';
		$search_ignore[] = 'той';
		$search_ignore[] = 'що містить';
		$search_ignore[] = 'том';
		$search_ignore[] = 'тому';
		$search_ignore[] = 'треба';
		$search_ignore[] = 'тут';
		$search_ignore[] = 'у';
		$search_ignore[] = 'усюди';
		$search_ignore[] = 'хоч';
		$search_ignore[] = 'хоча';
		$search_ignore[] = 'хто';
		$search_ignore[] = 'хтось';
		$search_ignore[] = 'це';
		$search_ignore[] = 'цим';
		$search_ignore[] = 'цих';
		$search_ignore[] = 'ці';
		$search_ignore[] = 'цьому';
		$search_ignore[] = 'часом';
		$search_ignore[] = 'через';
		$search_ignore[] = 'чи';
		$search_ignore[] = 'чиє';
		$search_ignore[] = 'чиєсь';
		$search_ignore[] = 'чий';
		$search_ignore[] = 'чий';
		$search_ignore[] = 'небудь';
		$search_ignore[] = 'чийсь';
		$search_ignore[] = 'чим';
		$search_ignore[] = 'чого';
		$search_ignore[] = 'чого-небудь';
		$search_ignore[] = 'чогось';
		$search_ignore[] = 'чому';
		$search_ignore[] = 'чомусь';
		$search_ignore[] = 'шляхом';
		$search_ignore[] = 'ще';
		$search_ignore[] = 'що';
		$search_ignore[] = 'що зовсім';
		$search_ignore[] = 'що має';
		$search_ignore[] = 'що мають';
		$search_ignore[] = 'що скільки-небудь';
		$search_ignore[] = 'щоб';
		$search_ignore[] = 'що-небудь';
		$search_ignore[] = 'щосили';
		$search_ignore[] = 'щось';
		$search_ignore[] = 'я';
		$search_ignore[] = 'і';
		$search_ignore[] = 'раніше';
		$search_ignore[] = 'якийсь';
		$search_ignore[] = 'як-небудь';
		$search_ignore[] = 'якось';
		$search_ignore[] = 'якщо';
		$search_ignore[] = 'й';
		$search_ignore[] = 'ті';
		$search_ignore[] = 'від';
		$search_ignore[] = 'ці';
		$search_ignore[] = 'ця';
		$search_ignore[] = 'цю';
		$search_ignore[] = 'цієї';
		$search_ignore[] = 'усіх';
		$search_ignore[] = 'які';
		$search_ignore[] = 'якої';
		$search_ignore[] = 'якою';
		$search_ignore[] = 'якому';
		$search_ignore[] = 'грн';
		$search_ignore[] = 'якщо';
		$search_ignore[] = 'цього';
		$search_ignore[] = 'свої';
		$search_ignore[] = 'своїх';
		$search_ignore[] = 'зі';
		$search_ignore[] = 'з';
		$search_ignore[] = 'або';
		$search_ignore[] = 'ні';
		$search_ignore[] = 'інщої';
		$search_ignore[] = 'як';
		$search_ignore[] = 'яка';
		$search_ignore[] = 'якої';
		$search_ignore[] = 'деяких';
		$search_ignore[] = 'деяка';
		$search_ignore[] = 'деякий';
		$search_ignore[] = 'якщо';
		$search_ignore[] = 'які';
		$search_ignore[] = 'яке';
		$search_ignore[] = 'яку';
		$search_ignore[] = 'яким';
		$search_ignore[] = 'яких';
		$search_ignore[] = 'який';
		$search_ignore[] = 'якій';
		$search_ignore[] = 'якими';
		$search_ignore[] = 'якого';
		$search_ignore[] = 'або';
		$search_ignore[] = 'такому';
		$search_ignore[] = 'таких';
		$search_ignore[] = 'таким';
		$search_ignore[] = 'такого';
		$search_ignore[] = 'адже';
		$search_ignore[] = 'має';
		$search_ignore[] = 'маю';
		$search_ignore[] = 'їхнім';
		$search_ignore[] = 'вул';
		$search_ignore[] = 'тел';
		$search_ignore[] = 'якщо';
		$search_ignore[] = 'якому';
		$search_ignore[] = 'їм';
		$search_ignore[] = 'щодо';
		$search_ignore[] = 'об';
		$search_ignore[] = 'оба';
		$search_ignore[] = 'обидва';
		$search_ignore[] = 'обидві';
		$search_ignore[] = 'був';
		$search_ignore[] = 'була';
		$search_ignore[] = 'було';
		$search_ignore[] = 'під';
		$search_ignore[] = 'ці';
		$search_ignore[] = 'ця';
		$search_ignore[] = 'цією';
		$search_ignore[] = 'цими';
		$search_ignore[] = 'цим';
		$search_ignore[] = 'цій';
		$search_ignore[] = 'ній';
		$search_ignore[] = 'свій';
		$search_ignore[] = 'іншому';
		$search_ignore[] = 'інших';
		$search_ignore[] = 'іншим';
		$search_ignore[] = 'іншого';
		$search_ignore[] = 'іншої';
		$search_ignore[] = 'іншими';
		$search_ignore[] = 'тільки';
		$search_ignore[] = 'деякі';
		$search_ignore[] = 'повному';
		$search_ignore[] = 'насамперед';
		$search_ignore[] = 'крім';
		$search_ignore[] = 'того';
		$search_ignore[] = 'напередодні';
		$search_ignore[] = 'безпосередньо';
		$search_ignore[] = 'однак';
		$search_ignore[] = 'ніж';
		$search_ignore[] = 'таким';
		$search_ignore[] = 'чином';
		$search_ignore[] = 'менш';
		$search_ignore[] = 'ніж';
		$search_ignore[] = 'більш';
		$search_ignore[] = 'перш';
		$search_ignore[] = 'будь-коли';
		$search_ignore[] = 'де-небудь';
		$search_ignore[] = 'із-за';
		$search_ignore[] = 'куди-небудь';
		$search_ignore[] = 'ледь-ледь';
		$search_ignore[] = 'чиє-небудь';
		$search_ignore[] = 'чий-небудь';
		$search_ignore[] = 'чого-небудь';
		$search_ignore[] = 'скільки-небудь';
		$search_ignore[] = 'що-небудь';
		$search_ignore[] = 'як-небудь';

		return $search_ignore;
	}
	/**
	 * Returns the lower length limit of search words
	 *
	 * @return	integer  The lower length limit of search words.
	 * @since	1.6
	 */
	public static function getLowerLimitSearchWord() {
		return 3;
	}
	/**
	 * Returns the upper length limit of search words
	 *
	 * @return	integer  The upper length limit of search words.
	 * @since	1.6
	 */
	public static function getUpperLimitSearchWord() {
		return 20;
	}
	/**
	 * Returns the number of chars to display when searching
	 *
	 * @return	integer  The number of chars to display when searching.
	 * @since	1.6
	 */
	public static function getSearchDisplayedCharactersNumber() {
		return 200;
	}
}

