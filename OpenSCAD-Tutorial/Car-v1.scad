$fa = 1;
$fs = 0.4;


// ---------- car body ----------

// car base
cube(size=[60, 20, 10], center=true);

// car top
translate([5, 0, 10 - 0.001]) {
    cube(size=[30, 20, 10], center=true);
}


// ---------- wheels ------------

// front left wheel
translate([-20, -15, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r=8, h=3, center=true);
    }
}

// front right wheel
translate([-20, 15, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r=8, h=3, center=true);
    }
}

// rear left wheel
translate([20, -15, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r=8, h=3, center=true);
    }
}

// rear right wheel
translate([20, 15, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r=8, h=3, center=true);
    }
}


// ---------- axles -------------

// front axle
translate([-20, 0, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r=2, h=30, center=true);
    }
}

// rear axle
translate([20, 0, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r=2, h=30, center=true);
    }
}