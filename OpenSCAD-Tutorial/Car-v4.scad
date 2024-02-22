module wheel(wheel_radius=10, side_spheres_radius=50, hub_thickness=4, cylinder_radius=2) {
    cylinder_height = 2*wheel_radius;

    difference() {
        // wheel sphere
        sphere(r=wheel_radius);
        // side sphere 1
        translate([0, side_spheres_radius + hub_thickness/2, 0]) {
            sphere(r=side_spheres_radius);
        }
        // side sphere 2
        translate([0, - (side_spheres_radius + hub_thickness/2), 0]) {
            sphere(r=side_spheres_radius);
        }
        // cylinder 1
        translate([wheel_radius/2, 0, 0]) {
            rotate([90, 0, 0]) {
                cylinder(r=cylinder_radius, h=cylinder_height, center=true);
            }
        }
        // cylinder 2
        translate([0, 0, wheel_radius/2]) {
            rotate([90, 0, 0]) {
                cylinder(r=cylinder_radius, h=cylinder_height, center=true);
            }
        }
        // cylinder 3
        translate([-wheel_radius/2, 0, 0]) {
            rotate([90, 0, 0]) {
                cylinder(r=cylinder_radius, h=cylinder_height, center=true);
            }
        }
        // cylinder 4
        translate([0, 0, -wheel_radius/2]) {
            rotate([90, 0, 0]) {
                cylinder(r=cylinder_radius, h=cylinder_height, center=true);
            }
        }
    }
}

module body(base_height=10, top_height=14, base_length=60, top_length=30, width=20, top_offset=5) {
    // car body base
    cube(size=[base_length, width, base_height], center=true);
    // car body top
    translate([top_offset, 0, base_height/2+top_height/2 - 0.001]) {
        cube(size=[top_length, width, top_height], center=true);    
    }
}

module axle(track=35, radius=2) {
    rotate([90, 0, 0]) {
        cylinder(r=radius, h=track, center=true);
    }
}


//$fa = 1;
//$fs = 0.4;

body_roll = 0;
wheels_turn = -20;
wheel_base = 40;
wheel_radius_rear = 12;
track = 35;


// ---------- car body ----------

rotate([body_roll, 0, 0]) {
    body();
}


// ---------- wheels ------------

// front left wheel
translate([-wheel_base/2, -track/2, 0]) {
    rotate([0, 0, wheels_turn]) {
        wheel();
    }
}

// front right wheel
translate([-wheel_base/2, track/2, 0]) {
    rotate([0, 0, wheels_turn]) {
        wheel();
    }
}

// rear left wheel
translate([wheel_base/2, -track/2, 0]) {
    rotate([0, 0, 0]) {
        wheel(wheel_radius=wheel_radius_rear);
    }
}

// rear right wheel
translate([wheel_base/2, track/2, 0]) {
    rotate([0, 0, 0]) {
        wheel(wheel_radius=wheel_radius_rear);
    }
}


// ---------- axles -------------

// front axle
translate([-wheel_base/2, 0, 0]) {
    axle();
}

// rear axle
translate([wheel_base/2, 0, 0]) {
    axle();
}