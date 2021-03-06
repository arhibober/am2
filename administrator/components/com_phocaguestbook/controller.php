<?php
/*
 * @package Joomla 1.5
 * @copyright Copyright (C) 2005 Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 *
 * @component Phoca Guestbook
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */
jimport('joomla.application.component.controller');
// Submenu view
$view	= JRequest::getVar( 'view', '', '', 'string', JREQUEST_ALLOWRAW );

$l['cp']	= 'COM_PHOCAGUESTBOOK_CONTROL_PANEL';
$l['i']		= 'COM_PHOCAGUESTBOOK_ITEMS';
$l['g']		= 'COM_PHOCAGUESTBOOK_GUESTBOOKS';
$l['in']	= 'COM_PHOCAGUESTBOOK_INFO';

if ($view == '' || $view == 'phocaguestbookcp') {
	JSubMenuHelper::addEntry(JText::_($l['cp']), 'index.php?option=com_phocaguestbook');
	JSubMenuHelper::addEntry(JText::_($l['i']), 'index.php?option=com_phocaguestbook&view=phocaguestbooks');
	JSubMenuHelper::addEntry(JText::_($l['g']), 'index.php?option=com_phocaguestbook&view=phocaguestbookbs');
	JSubMenuHelper::addEntry(JText::_($l['in']), 'index.php?option=com_phocaguestbook&view=phocaguestbookin');
}

if ($view == 'phocaguestbookbs') {
	JSubMenuHelper::addEntry(JText::_($l['cp']), 'index.php?option=com_phocaguestbook');
	JSubMenuHelper::addEntry(JText::_($l['i']), 'index.php?option=com_phocaguestbook&view=phocaguestbooks');
	JSubMenuHelper::addEntry(JText::_($l['g']), 'index.php?option=com_phocaguestbook&view=phocaguestbookbs', true );
	JSubMenuHelper::addEntry(JText::_($l['in']), 'index.php?option=com_phocaguestbook&view=phocaguestbookin');
}

if ($view == 'phocaguestbooks') {
	JSubMenuHelper::addEntry(JText::_($l['cp']), 'index.php?option=com_phocaguestbook');
	JSubMenuHelper::addEntry(JText::_($l['i']), 'index.php?option=com_phocaguestbook&view=phocaguestbooks', true);
	JSubMenuHelper::addEntry(JText::_($l['g']), 'index.php?option=com_phocaguestbook&view=phocaguestbookbs' );
	JSubMenuHelper::addEntry(JText::_($l['in']), 'index.php?option=com_phocaguestbook&view=phocaguestbookin');
}

if ($view == 'phocaguestbookin') {
	JSubMenuHelper::addEntry(JText::_($l['cp']), 'index.php?option=com_phocaguestbook');
	JSubMenuHelper::addEntry(JText::_($l['i']), 'index.php?option=com_phocaguestbook&view=phocaguestbooks');
	JSubMenuHelper::addEntry(JText::_($l['g']), 'index.php?option=com_phocaguestbook&view=phocaguestbookbs' );
	JSubMenuHelper::addEntry(JText::_($l['in']), 'index.php?option=com_phocaguestbook&view=phocaguestbookin', true);
}

class PhocaGuestbookCpController extends JController
{
	function display() {
		parent::display();
	}
}
?>
