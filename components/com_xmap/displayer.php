<?php
/**
* @version		$Id: displayer.php 23 2011-01-27 05:04:56Z guille $
* @copyright		Copyright (C) 2005 - 2009 Joomla! Vargas. All rights reserved.
* @license		GNU General Public License version 2 or later; see LICENSE.txt
* @author		Guillermo Vargas (guille@vargas.co.cr)
*/

// No direct access
defined('_JEXEC') or die;


class XmapDisplayer {

    /**
     *
     * @var int  Counter for the number of links on the sitemap
     */
    protected $count;
    /**
     *
     * @var JView
     */
    protected $jview;

    public $config;
    public $sitemap;
    /**
     *
     * @var int   Current timestamp
     */
    public $now;
    public $userLevels;
    /**
     *
     * @var string  The current value for the request var "view" (eg. html, xml)
     */
    public $view;

    function __construct($config,$sitemap)
    {
        jimport('joomla.utilities.date');
        jimport('joomla.user.helper');
        $user = JFactory::getUser();
        $groups = array_keys(JUserHelper::getUserGroups($user->get('id')));
        $date = new JDate();

        $this->userLevels	= (array)$user->authorisedLevels();
        // Deprecated: should use userLevels from now on
        // $this->gid	= $user->gid;
        $this->now	= $date->toUnix();
        $this->config	= $config;
        $this->sitemap	= $sitemap;
        $this->isNews	= false;
        $this->count	= 0;
        $this->_isAdmin	= in_array(8,$groups);  // TODO: Change to use ACLs
    }

    public function printNode( &$node ) {
        return false;
    }


    public function printSitemap()
    {
        foreach ($this->jview->items as $menutype => &$items) {

            $node = new stdclass();

            $node->uid = "menu-".$menutype;
            $node->menutype = $menutype;
            $node->priority = null;
            $node->changefreq = null;
            // $node->priority = $menu->priority;
            // $node->changefreq = $menu->changefreq;
            $node->browserNav = 3;
            $node->type = 'separator';
            $node->name = $this->getMenuTitle($menutype,'mod_menu'); // Get the name of this menu

            $this->startMenu($node);
            $this->printMenuTree($node, $items);
            $this->endMenu($node);
        }
    }

    public function setJView($view)
    {
        $this->jview = $view;
    }

    public function getMenuTitle($menutype,$module='mod_menu')
    {
        return $menutype;
    }

    protected function startMenu(&$node)
    {
        return true;
    }
    protected function endMenu(&$node)
    {
        return true;
    }
    protected function printMenuTree($menu,&$items)
    {
        $this->changeLevel(1);

        $router = JSite::getRouter();

        foreach ( $items as $i => $item ) {             // Add each menu entry to the root tree.
            $item->priority = $item->priority;
            $item->changefreq = $item->changefreq;
            /* TODO
            if( in_array( $item->id, $menuExluded ) ) {     // ignore exluded menu-items
            continue;
            }
            */

            $node = new stdclass;

            $node->id               = $item->id;
            $node->uid              = $item->uid;
            $node->name             = $item->title;			// displayed name of node
            // $node->parent           = $item->parent;		// id of parent node
            $node->browserNav       = $item->browserNav;		// how to open link
            $node->priority         = $item->priority;
            $node->changefreq       = $item->changefreq;
            $node->type             = $item->type;			// menuentry-type
            $node->menutype         = $menu->menutype;		// menuentry-type
            $node->home             = $item->home;			// If it's a home menu entry
            // $node->link             = isset( $item->link ) ? htmlspecialchars( $item->link ) : '';
            $node->link             = $item->link;
            $node->option           = $item->option;

            // New on Xmap 2.0: send the menu params
            $node->params =& $item->params;

            if ($node->home == 1) {
                // Correct the URL for the home page.
                $node->link = JURI::base();
            }
            switch ($item->type)
            {
                case 'separator':
                    $item->browserNav=3;
                    break;
                case 'url':
                    if ((strpos($item->link, 'index.php?') === 0) && (strpos($item->link, 'Itemid=') === false)) {
                        // If this is an internal Joomla link, ensure the Itemid is set.
                        $node->link = $node->link.'&Itemid='.$node->id;
                    }
                    break;
                case 'alias':
                    // If this is an alias use the item id stored in the parameters to make the link.
                    $node->link = 'index.php?Itemid='.$item->params->get('aliasoptions');
                    break;
                default:
                    if ($router->getMode() == JROUTER_MODE_SEF) {
                        $node->link = 'index.php?Itemid='.$node->id;
                    }
                    else {
                        $node->link .= '&Itemid='.$node->id;
                    }
                    break;
            }

            if ($this->printNode($node)) {

                //Restore the original link
                $node->link             = $item->link;
                $this->printMenuTree($node,$item->items);
                $matches=array();
                //if ( preg_match('#^/?index.php.*option=(com_[^&]+)#',$node->link,$matches) ) {
                if ( $node->option ) {
                    if ( !empty($this->jview->extensions[$node->option]) ) {
                         $node->uid = $node->option;
                        $className = 'xmap_'.$node->option;
                        $result = call_user_func_array(array($className, 'getTree'),array(&$this,&$node,&$this->jview->extensions[$node->option]->params));
                    }
                }
                //XmapPlugins::printTree( $this, $node, $this->jview->extensions );    // Determine the menu entry's type and call it's handler
            }
        }
        $this->changeLevel(-1);
    }

    public function changeLevel($step)
    {
        return true;
    }

    public function getCount()
    {
        return $this->count;
    }

    public function &getExcludedItems() {
        static $_excluded_items;
        if (!isset($_excluded_items)) {
            $_excluded_items = array();
            $registry = new JRegistry('_default');
            $registry->loadJSON($this->sitemap->excluded_items);
            $_excluded_items = $registry->toArray();
        }
        return $_excluded_items;
    }

    public function isExcluded($itemid,$uid) {
        $excludedItems = $this->getExcludedItems();
        $items = NULL;
        if (!empty($excludedItems[$itemid])) {
            if (is_object($excludedItems[$itemid])) {
                $excludedItems[$itemid] = (array) $excludedItems[$itemid];
            }
            $items =& $excludedItems[$itemid];
        }
        if (!$items) {
            return false;
        }
        return ( in_array($uid, $items));
    }
}