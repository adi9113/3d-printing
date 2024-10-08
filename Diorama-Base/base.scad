module base(base_plate_elevation=10, base_plate_support=10, base_plate_length=100, base_plate_height=5, cover_thickness=1, drillings=true, drilling_radius=2) {
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

base();
