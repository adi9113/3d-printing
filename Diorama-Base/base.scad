// base_plate_elevation: Height at which the diorama should be placed in cm
// base_plate_support: Length of base plate bracket minus thickness of covers in cm
// base_plate_length: Side length of the base plate in cm
// base_plate_height: Height of base plate in cm
// cover_thickness: Thickness of cover material
// drillings: Boolean to include or exclude drillings
// drilling_radius: Radius of the drillings in cm

// Maybe offset of cover_thickness is needed to have correct length inside (e.g. base_plate_length needs to be 102 and not 100 to fit 100 length diorama)!!!

// Main base module with optional drillings
module base(base_plate_elevation, base_plate_support, base_plate_length, base_plate_height, cover_thickness, drillings, drilling_radius) {
    // Support structure
    difference() {
        cube(size=[base_plate_length, base_plate_support, base_plate_elevation], center=true);
        if (drillings) {
            if (base_plate_length >= 100) {
                for (i=[0:40:base_plate_length/2]) {
                    translate([i, 0, base_plate_elevation/4]) {
                        cylinder(r=drilling_radius, h=base_plate_elevation/2, center=true);
                    }
                    translate([-i, 0, base_plate_elevation/4]) {
                        cylinder(r=drilling_radius, h=base_plate_elevation/2, center=true);
                    }
                }
            } else {
                translate([0, 0, base_plate_elevation/4]) {
                    cylinder(r=drilling_radius, h=base_plate_elevation/2, center=true);
                }
            }
        }
    }
    
    // Base plate cover
    translate([0, -(base_plate_support/2 - cover_thickness/2), base_plate_elevation/2 + base_plate_height/2 - 0.001]) {
        cube(size=[base_plate_length, cover_thickness, base_plate_height], center=true);
    }
}

// Adds a female connector on the right side for interconnecting inidividual sections
module female_connector(base_plate_length, base_plate_support) {
    translate([base_plate_length/2, base_plate_support/2 - base_plate_support/2, 0]) {
        rotate([0, 0, 90]) {
            cube(size=[5, 10, 5], center=true);
        }
    }
}

// Adds a male connector on the left side for interconnecting inidividual sections
module male_connector(base_plate_length, base_plate_support) {
    translate([-(base_plate_length/2), base_plate_support/2 - base_plate_support/2, 0]) {
        rotate([0, 0, 90]) {
            cube(size=[5, 10, 5], center=true);
        }
    }
}

// Adds a right corner connector for 90° connections
module right_corner_connector(base_plate_length, base_plate_support) {
    translate([base_plate_length/2 - 5, base_plate_support/2, 0]) {
        cube(size=[5, 10, 5], center=true);
    }
}

// Adds a left corner connector for 90° connections
module left_corner_connector(base_plate_length, base_plate_support) {
    translate([-(base_plate_length/2 - 5), base_plate_support/2, 0]) {
        cube(size=[5, 10, 5], center=true);
    }
}

// Adds a right side cover for corner sections
module right_side_cover(base_plate_length, base_plate_elevation, base_plate_support, base_plate_height, cover_thickness) {
    translate([base_plate_length/2 - cover_thickness/2, 0, base_plate_elevation/2 + base_plate_height/2 - 0.001]) {
        rotate([0, 0, 90]) {
            cube(size=[base_plate_support, cover_thickness, base_plate_height], center=true);
        }
    }
}

// Adds a left side cover for corner sections
module left_side_cover(base_plate_length, base_plate_elevation, base_plate_support, base_plate_height, cover_thickness) {
    translate([-(base_plate_length/2 - cover_thickness/2), 0, base_plate_elevation/2 + base_plate_height/2 - 0.001]) {
        rotate([0, 0, 90]) {
            cube(size=[base_plate_support, cover_thickness, base_plate_height], center=true);
        }
    }
}
