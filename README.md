# NestedSets #

Class for managing DB Tree

_Copyright (c) 2012 Dmitry Serpakov_

_Licensed under the MIT license (http://www.opensource.org/licenses/mit-license.php)_

## Dependence ##

PHP 5.3+

ORM

## Highlights ##

* another implementation of the NestedSets algoritm

## Basic usage ##

Create DB:

```
#!=shell

$ mysql -u USERNAME -p DATABASE < db.sql
```

Include libraries:

```
#!=PHP

require_once 'ORM.class.php';
require_once 'NestedSets.class.php';
```

Try to use:

```
#!=PHP

$ORM = new ORM(); // your own ORM
$NestedSets = new NestedSets($ORM, 'db_tree');
$NestedSets->insert(1, array('name' => 'First'));
```

## Methods ##

* _getTree()_ - Get whole tree

* _getBranch()_ - Get current branch

* _getPath()_ - Get path to current item (current included)

* _getDescendants()_ - Get descendants for current

* _getChilds()_ - Get child for current

* _insert()_ - Insert new item

* _delete()_ - Delete current item WITH ALL DESCENDANTS

* _moveUnder()_ - Move current item to the subordinate of parent

* _moveNear()_ - Move current item near

* _move()_ - Move current item process