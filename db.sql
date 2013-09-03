
CREATE TABLE IF NOT EXISTS `db_tree` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent id',
  `left_key` int(10) unsigned NOT NULL COMMENT 'Left key (nested sets)',
  `right_key` int(10) unsigned NOT NULL COMMENT 'Right key (nested sets)',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Depth level',
  `name` varchar(100) NOT NULL COMMENT 'Title',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `left_key` (`left_key`,`right_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='DB tree (NestedSets)' AUTO_INCREMENT=1 ;