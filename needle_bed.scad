/*
 *  needle_bed.scad
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

// integrated pegboard, screw holes, needle endstops

include <configuration.scad>

module needle_bed() {

	difference() {
		union() {
			cube([$needle_bed_width, $needle_bed_depth, $needle_bed_height]);

			// fingers
			for(i=[0:$needles_per_bed]) {
				translate([i * $needle_spacing  - $needle_width / 2, -20, 0])
				cube([$needle_width, 20, $needle_bed_height * 2]);
			}
		}
		for(i=[0:$needles_per_bed - 1]) {
			translate([i * $needle_spacing + $needle_spacing / 2 - $needle_width / 2, 20, -1])
			cube([$needle_width, 30, $needle_bed_height + 2]);

			translate([i * $needle_spacing + $needle_spacing / 2 - $needle_width / 2, -1, -1])
			cube([$needle_width, $needle_bed_depth + 2, $needle_height + 1]);
		}
		
		// trim the edges
		translate([-6,-21,-1])
		cube([6, $needle_bed_depth + 22, $needle_bed_height * 2 + 2]);

		translate([$needle_bed_width,-21,-1])
		cube([6, $needle_bed_depth + 22, $needle_bed_height * 2 + 2]);
	}

}

needle_bed();