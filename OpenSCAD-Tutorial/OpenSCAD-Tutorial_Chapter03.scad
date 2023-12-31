$fa = 1;
$fs = 0.4;

base_height = 8;
top_height = 10;
body_roll = 0;
wheel_radius = 8;
wheel_width = 4;
wheels_turn = -20;
cylinder_radius = 2;
cylinder_height = 2*wheel_radius;
track = 28;

// Car body
rotate([body_roll,0,0]) {
    // Car body base
    resize([90,20,12])
        sphere(r = 10);
    // Car body top
    translate([10,0,5])
        resize([50,15,15])
        sphere(r = 10);
}

// Front left wheel
translate([-20,-track/2,0])
    rotate([0,0,wheels_turn])
    resize([2*wheel_radius,wheel_width,2*wheel_radius])
    difference() {
        // Wheel sphere
        sphere(r = wheel_radius);
        // Cylinder 1
        translate([wheel_radius/2,0,0])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
        // Cylinder 2
        translate([0,0,wheel_radius/2])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
        // Cylinder 3
        translate([-wheel_radius/2,0,0])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
        // Cylinder 4
        translate([0,0,-wheel_radius/2])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
    }

// Front right wheel
translate([-20,track/2,0])
    rotate([0,0,wheels_turn])
    resize([2*wheel_radius,wheel_width,2*wheel_radius])
    difference() {
        // Wheel sphere
        sphere(r = wheel_radius);
        // Cylinder 1
        translate([wheel_radius/2,0,0])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
        // Cylinder 2
        translate([0,0,wheel_radius/2])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
        // Cylinder 3
        translate([-wheel_radius/2,0,0])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
        // Cylinder 4
        translate([0,0,-wheel_radius/2])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
    }

// Rear left wheel
translate([20,-track/2,0])
    rotate([0,0,0])
    resize([2*wheel_radius,wheel_width,2*wheel_radius])
    difference() {
        // Wheel sphere
        sphere(r = wheel_radius);
        // Cylinder 1
        translate([wheel_radius/2,0,0])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
        // Cylinder 2
        translate([0,0,wheel_radius/2])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
        // Cylinder 3
        translate([-wheel_radius/2,0,0])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
        // Cylinder 4
        translate([0,0,-wheel_radius/2])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
    }

// Rear right wheel   
translate([20,track/2,0])
    rotate([0,0,0])
    resize([2*wheel_radius,wheel_width,2*wheel_radius])
    difference() {
        // Wheel sphere
        sphere(r = wheel_radius);
        // Cylinder 1
        translate([wheel_radius/2,0,0])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
        // Cylinder 2
        translate([0,0,wheel_radius/2])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
        // Cylinder 3
        translate([-wheel_radius/2,0,0])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
        // Cylinder 4
        translate([0,0,-wheel_radius/2])
            rotate([90,0,0])
            cylinder(h = cylinder_height, r = cylinder_radius, center = true);
    }
    
// Front axle
translate([-20,0,0]) 
    rotate([90,0,0])
    cylinder(h = track, r = 2, center = true);

// Rear axle    
translate([20,0,0]) 
    rotate([90,0,0])
    cylinder(h = track, r = 2, center = true);