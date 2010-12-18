// Constants
$needle_width = 0;
$needle_length = 0;
$needle_catch_offset = 0;
$needle_catch_depth = 0;
$needle_catch_height = 0;

$number_of_needles = 10;

$needle_spacing = 0;

$guide_rail_diameter = 8;
$guide_rail_height = 40;
$guide_rail_depth = 20;
$guide_rail_mount_width = 5;
$guide_rail_mount_depth = 30;
$guide_rail_mount_height = 50;
$idler = 1;
$motor = 2;

$needle_bed_width = 10;
$needle_bed_depth = 60;
$needle_bed_height = 5;

// Derived values
$skeinosaur_width = $needle_bed_width * $number_of_needles + $guide_rail_mount_width * 2;
$guide_rail_radius = $guide_rail_diameter / 2;