/**
Title: Needle Holder
Description: Holder for 24ga needles
Designer: Nam Tran
Units: mm
Last Modified: 2022-07-10
*/

well_depth = 2.3;
depth_tolerance = 0.0;
well_diameter = 0.5;
diameter_tolerance = 0.4;
distance_between_wells = 10;

wells_per_row = 4;
wells_per_column = 2;
base_height = 5;

module base() {
    cube([((wells_per_row + 1) * distance_between_wells), ((wells_per_column + 1) * distance_between_wells), base_height]);
}

module wells() {
    for (i = [0:(wells_per_row - 1)]) {
        for (j = [0:(wells_per_column - 1)]) {
            translate([distance_between_wells+(distance_between_wells * i), distance_between_wells+(distance_between_wells * j), (base_height - well_depth)])
            //cylinder(h=(well_depth + 0.1), r=well_diameter, $fn=360);
            cube([(well_diameter + diameter_tolerance), (well_diameter + diameter_tolerance), (well_depth + depth_tolerance + 0.1)]);
        }
    }
}

difference() {
    base();
    wells();
}