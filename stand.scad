difference() {
    union() {
        difference() {
            base();
            translate([-22, 37, 4.5]) stepperslide();
        }

        rotate(45) bars();
    }
    cylinder(47.5, 11.1, 11.1);
}
module bars() {
    translate([0,0,27.5]) cube([170, 7.5, 40], true);
    rotate(90) translate([0,0,27.5]) cube([170, 7.5, 40], true);
    
    cylinder(47.5, 20, 20);;
}

module base() {
    translate([0,0,7.5]) difference() {
        cylinder(40, r=90);
        cylinder(40, r=80);
    }
    cylinder(7.5, 93, 90);
}

module stepperslide() {
    // stepper size is 42.3 max
    cube([44, 56, 43]);
    translate([6.5, 4.5, -5]) holes();

}
module holes() {
    translate([0, 0, 0]) hole();
    translate([0, 31, 0]) hole();
    translate([31, 31, 0]) hole();    
    translate([31, 0, 0]) hole();
    translate([15.5, 15, 0]) bighole();
}

module hole() {
    union() {
        cylinder(10, d=3.5, $fn=40);
        translate([-1.75, 0, 0]) cube([3.5, 7, 10]);
        translate([0, 7, 0]) cylinder(10, d=3.5, $fn=40);   
    }
}

module bighole() {
    union() {
        cylinder(10, d=22.5, $fn=40);
        translate([-11.25, 0, 0]) cube([22.5, 7, 10]);
        translate([0, 7, 0]) cylinder(10, d=22.5, $fn=40);   
    }
}