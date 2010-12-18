// Constants
$needle_width = 2;
$needle_length = 0;
$needle_height = 3;
$needle_catch_offset = 0;
$needle_catch_depth = 0;
$needle_catch_height = 0;

$number_of_needles = 10;
$needles_per_bed = 5;
$needle_spacing = 10;

$guide_rail_diameter = 8;
$guide_rail_height = 40;
$guide_rail_depth = 20;
$guide_rail_mount_width = 5;
$guide_rail_mount_depth = 30;
$guide_rail_mount_height = 50;

$needle_bed_depth = 60;
$needle_bed_height = 5;

$drive_mechanism = $belt;
$drive_motor = $nema17;

// Named defines
$nema17 = 1;
$nema23 = 2;
$belt = 3;
$rack = 4;

// Derived values
$needle_bed_width = $needles_per_bed * $needle_spacing;
$skeinosaur_width = $number_of_needles * $needle_spacing + $guide_rail_mount_width * 2;
$guide_rail_radius = $guide_rail_diameter / 2;
