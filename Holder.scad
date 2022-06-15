/**
Title: Needle Holder
Description: Holder for 24ga needles
Designer: Nam Tran
Units: mm
Last Modified: 2022-06-15
*/

well_depth = 2.3;
well_diameter = 0.5;
distance_between_wells = 10;

base_width = 80;
base_depth = 120;
base_height = 5;

module base() {
    cube([base_width, base_depth, base_height]);
}

module wells() {
    for (i = [0:distance_between_wells:(base_width - (2 * distance_between_wells))]) {
        for (j = [0:distance_between_wells:(base_depth - (2 * distance_between_wells))]) {
            translate([(distance_between_wells + i), (distance_between_wells + j), (base_height - well_depth)])
            cylinder(h=(well_depth + 0.1), r=well_diameter, $fn=360);
        }
    }
}

difference() {
    base();
    wells();
}