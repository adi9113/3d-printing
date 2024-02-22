//$fa = 1;
//$fs = 0.4;

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

wheel();