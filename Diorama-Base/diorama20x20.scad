use <base.scad>;

translate([0, -95, 0]) {
    base(base_plate_length=200, drillings=false);
}

rotate([0, 0, 180]) {
    translate([0, -95, 0]) {
        base(base_plate_length=200, drillings=false);
    }
}


color("red")
rotate([0, 0, 90]) {
    translate([0, -95, 0]) {
        base(base_plate_length=200, drillings=false);
    }
}

color("red")
rotate([0, 0, -90]) {
    translate([0, -95, 0]) {
        base(base_plate_length=200, drillings=false);
    }
}