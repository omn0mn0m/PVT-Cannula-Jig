/**
Title: Needle Holder
Description: Holder for 24ga needles
Designer: Nam Tran
Units: mm
Last Modified: 2022-07-10
*/

/*[ Well Values] */
well_depth = 2.3; // .1
// Depth adjustment from "true" value
depth_tolerance = 0.0; // .1
well_diameter = 0.5; // .1
// Diameter adjustment from "true" value
diameter_tolerance = 0.0; // .1

/* [Base Values] */
wells_per_row = 4; // [1:10]
wells_per_column = 2; // [1:10]
distance_between_wells = 10.0; // .1
base_height = 5.0; // .1

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