<?php

/**
 * @copyright   Nguyen Tuan.
 * @license     License GNU General Public License version 2 or later; see LICENSE.txt
 * @email       nguyen1986vn@gmail.com
 */
// No direct access to this file
defined('_JEXEC') or die('Access deny');

class TableTest extends JTable
{

  var $id = NULL;
  var $title = NULL;
  var $alias = NULL;
  var $content = NULL;
  var $published = NULL;

  function TableTest(&$db)
  {
    parent::__construct('_JOOM_TABLE_BOOK_TEST', 'id', $db);
  }

}