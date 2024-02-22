$fa = 1;
$fs = 0.4;

base_height = 8;
top_height = 10;
body_roll = 3;
wheel_radius = 10;
wheel_width = 5;
wheels_turn = 10;
track = 30;


// ---------- car body ----------

rotate([body_roll, 0, 0]) {
    // car base
    cube(size=[60, 20, base_height], center=true);
    // car top
    translate([5, 0, base_height/2 + top_height/2 - 0.001]) {
        cube(size=[30, 20, top_height], center=true);
    }
}


// ---------- wheels ------------

// front left wheel
translate([-20, -track/2, 0]) {
    rotate([90, 0, wheels_turn]) {
        cylinder(r=wheel_radius, h=wheel_width, center=true);
    }
}

// front right wheel
translate([-20, track/2, 0]) {
    rotate([90, 0, wheels_turn]) {
        cylinder(r=wheel_radius, h=wheel_width, center=true);
    }
}

// rear left wheel
translate([20, -track/2, 0]) {
    rotate([90, 0, wheels_turn]) {
        cylinder(r=wheel_radius, h=wheel_width, center=true);
    }
}

// rear right wheel
translate([20, track/2, 0]) {
    rotate([90, 0, wheels_turn]) {
        cylinder(r=wheel_radius, h=wheel_width, center=true);
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