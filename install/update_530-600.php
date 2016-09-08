<?php

/**
 * File: update_530-600.php.
 * Author: Ulrich Block
 * Date: 12.05.16
 * Contact: <ulrich.block@easy-wi.com>
 *
 * This file is part of Easy-WI.
 *
 * Easy-WI is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Easy-WI is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Easy-WI.  If not, see <http://www.gnu.org/licenses/>.
 *
 * Diese Datei ist Teil von Easy-WI.
 *
 * Easy-WI ist Freie Software: Sie koennen es unter den Bedingungen
 * der GNU General Public License, wie von der Free Software Foundation,
 * Version 3 der Lizenz oder (nach Ihrer Wahl) jeder spaeteren
 * veroeffentlichten Version, weiterverbreiten und/oder modifizieren.
 *
 * Easy-WI wird in der Hoffnung, dass es nuetzlich sein wird, aber
 * OHNE JEDE GEWAEHELEISTUNG, bereitgestellt; sogar ohne die implizite
 * Gewaehrleistung der MARKTFAEHIGKEIT oder EIGNUNG FUER EINEN BESTIMMTEN ZWECK.
 * Siehe die GNU General Public License fuer weitere Details.
 *
 * Sie sollten eine Kopie der GNU General Public License zusammen mit diesem
 * Programm erhalten haben. Wenn nicht, siehe <http://www.gnu.org/licenses/>.
 */

if (isset($include) and $include == true) {

    $response->add('Action: Update to new skin color template system');

    $query = $sql->prepare("SHOW COLUMNS FROM `settings` WHERE `Field`='serverID'");
    $query->execute();

    if ($query->rowCount() == 0) {
        $query = $sql->prepare("ALTER TABLE `settings` ADD `serverID` INT(10) UNSIGNED");
        $query->execute();
        $query->closecursor();
    }

    $query2 = $sql->prepare("UPDATE `servertypes` SET `appID`=?,`serverID`=`appID` WHERE `id`=? LIMIT 1");
    $query = $sql->prepare("SELECT `id`,`appID`,`shorten` FROM `servertypes` WHERE `appID` IS NOT NULL AND `serverID` IS NULL");
    $query->execute();
    while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
        $query->execute(array(workAroundForValveChaos($row['appID'], $row['shorten'], true), $row['id']));
    }

    $query = $sql->prepare("INSERT INTO `easywi_version` (`version`,`de`,`en`) VALUES
('6.0.0','<div align=\"right\">25.03.2016</div>
<b>&Auml;nderungen:</b><br/>
<ul>
<li>Gameserver:
<ul>
<li></li>
<li></li>
</ul></li>
</ul>
<b>Bugfixes:</b>
<ul>
<li></li>
</ul>','<div align=\"right\">03.25.2016</div>
<b>Changes:</b><br/>
<ul>
<li>Gameserver:
<ul>
<li></li>
<li></li>
</ul></li>
</ul>
<b>Bugfixes:</b>
<ul>
<li></li>
</ul>')");
    $query->execute();
    $response->add('Action: insert_easywi_version done: ');
    $query->closecursor();

} else {
    echo "Error: this file needs to be included by the updater!<br />";
}