include <gears/gears.scad>
union() {
    center_rod();
    difference() {
        base_with_gears();
        translate([0, 0, 15]) bearings();
    }
}

module center_rod() {
    difference() {
        cylinder(15, 40, 15);
        cylinder(15, 11.1, 11.1);
    }
}

module bearings() {
    translate([0, 85, 0]) bearing();
    translate([0, -85, 0]) bearing();
    translate([85, 0, 0]) rotate(90) bearing();
    translate([-85, 0, 0]) rotate(90) bearing();
}

module bearing() {
    union() {
        // bearing OD + clearence
        rotate([90]) cylinder(9, 12, 12, true);
        // bearing rod
        rotate([90]) cylinder(17, 3.5, 3.5, true);
    }
}

module base_with_gears() {
    union() {
        rotate(5) cylinder(5, 99.93, 99.93);
        translate([0,0,5]) ring_gear(2, 70, 10, +27.6,   pressure_angle=20, helix_angle=0);
    }
}