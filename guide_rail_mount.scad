/*
 *  guide_rail_mount.scad
 *  by Timothy Schmidt.
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
*/

include <configuration.scad>

module guide_rail_mount(style) {
	cube([$guide_rail_mount_width, $guide_rail_mount_depth, $guide_rail_mount_height]);

	if (style == $idler) { echo("bob"); }

	if (style == $motor) { echo("nancy"); }

}

guide_rail_mount($motor);