/*
 *  skeinosaur.scad
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

use <MCAD/servos.scad>

use <carriage.scad>
use <guide_rail_mount.scad>
use <needle_bed.scad>
use <needle_cam.scad>

alignds420([0,0,0], [0,0,0], screws = 0, axle_lenght = 0);

carriage();

guide_rail_mount($motor);

translate([$skeinosaur_width - $guide_rail_mount_width, 0, 0])
guide_rail_mount($idler);

for (i=[0:$number_of_needles / $needles_per_bed - 1]) {
	translate([$guide_rail_mount_width + i * $needle_bed_width, 0, 0])
	needle_bed();
}

needle_cam();

// Guide rail
translate([0, $guide_rail_depth, $guide_rail_height])
rotate([0,90,0])
cylinder(r=$guide_rail_radius, h=$skeinosaur_width);

// Belt
translate([0, 0, $guide_rail_height])
cube([$skeinosaur_width, 1, 4]);