use <base.scad>;

base_plate_elevation=10;    // Height at which the diorama should be placed in cm
base_plate_support=10;      // Depth of base plate bracket minus thickness of covers in cm
base_plate_length=200;      // Side length of the base plate (section) in cm

base_plate_height=5;        // Thichkness of base plate in cm
cover_thickness=1;          // Thickness of base cover

drillings=true;             // Drillings to mount the base plate
drilling_radius=2;          // Radius of the drillings in cm


translate([0, -95, 0]) {
    base(base_plate_elevation, base_plate_support, base_plate_length, base_plate_height, cover_thickness, drillings, drilling_radius);
}

rotate([0, 0, 180]) {
    translate([0, -95, 0]) {
        base(base_plate_elevation, base_plate_support, base_plate_length, base_plate_height, cover_thickness, drillings, drilling_radius);
    }
}


color("red")
rotate([0, 0, 90]) {
    translate([0, -95, 0]) {
        base(base_plate_elevation, base_plate_support, base_plate_length, base_plate_height, cover_thickness, drillings, drilling_radius);
    }
}

color("red")
rotate([0, 0, -90]) {
    translate([0, -95, 0]) {
        base(base_plate_elevation, base_plate_support, base_plate_length, base_plate_height, cover_thickness, drillings, drilling_radius);
    }
}