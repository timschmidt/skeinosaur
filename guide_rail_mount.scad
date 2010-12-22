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
use <MCAD/shapes.scad>

module screw_bracket() {
	difference() {
		translate([10,5,0]) rotate([90,0,180]) rightTriangle(10,10,10);
		translate([15, 5, -1]) cylinder(r=2, h=10);
		translate([15, 5, 3]) cylinder(r=4, h=10);
	}
}

module guide_rail_mount() {
	union() {
		cube([10, $guide_rail_mount_depth, $guide_rail_mount_height]);
		screw_bracket();
		translate([0, $guide_rail_mount_depth - 10, 0]) screw_bracket();
	}
}

guide_rail_mount();
