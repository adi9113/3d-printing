use <base.scad>

base_plate_elevation=10;    // Height at which the diorama should be placed in cm
base_plate_support=10;      // Depth of base plate bracket minus thickness of covers in cm
base_plate_length=100;      // Side length of the base plate (section) in cm

base_plate_height=5;        // Thichkness of base plate in cm
cover_thickness=1;          // Thickness of base cover

drillings=true;             // Drillings to mount the base plate
drilling_radius=2;          // Radius of the drillings in cm

female_connector=false;     // Include a female connector on the left side of this section
male_connector=false;       // Include a male connector on the right side of this section

right_corner_connection=false;    // Include a corner connector on the right side for 90° connections
left_corner_connection=false;     // Include a corner connector on the left side for 90° connections


if (female_connector) {
    difference() {
        base(base_plate_elevation, base_plate_support, base_plate_length, base_plate_height, cover_thickness, drillings, drilling_radius);
        female_connector(base_plate_length, base_plate_support);
    }
} else {
    base(base_plate_elevation, base_plate_support, base_plate_length, base_plate_height, cover_thickness, drillings, drilling_radius);
}

if (male_connector) {
    male_connector(base_plate_length, base_plate_support);
}

if (right_corner_connection) {
    right_corner_connector(base_plate_length, base_plate_support);
    right_side_cover(base_plate_length, base_plate_support, base_plate_elevation, base_plate_height, cover_thickness);
}

if (left_corner_connection) {
    left_corner_connector(base_plate_length, base_plate_support);
    left_side_cover(base_plate_length, base_plate_support, base_plate_elevation, base_plate_height, cover_thickness);
}