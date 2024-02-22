$fa = 1;
$fs = 0.4;

body_roll = 0;

wheel_radius = 8;
wheel_width = 4;
wheels_turn = -20;
track = 28;

side_spheres_radius = 50;
hub_thickness = 4;
cylinder_radius = 2;
cylinder_height = 2*wheel_radius;


// ---------- car body ----------

rotate([body_roll, 0, 0]) {
    // car base
    resize([90, 20, 10]) {
        sphere(r=10);
    }
    // car top
    translate([10, 0, 5]) {
        resize([50, 15, 15]) {
            sphere(r=10);
        }
    }
}


// ---------- wheels ------------

// front left wheel
translate([-20, -track/2, 0]) {
    rotate([0, 0, wheels_turn]) {
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
}

// front right wheel
translate([-20, track/2, 0]) {
    rotate([0, 0, wheels_turn]) {
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
}

// rear left wheel
translate([20, -track/2, 0]) {
    rotate([0, 0, wheels_turn]) {
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
}

// rear right wheel
translate([20, track/2, 0]) {
    rotate([0, 0, wheels_turn]) {
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
}


// ---------- axles -------------

// front axle
translate([-20, 0, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r=2, h=track, center=true);
    }
}

// rear axle
translate([20, 0, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r=2, h=track, center=true);
    }
}