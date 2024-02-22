//$fa = 1;
//$fs = 0.4;

module axle(track=35, radius=2) {
    rotate([90, 0, 0]) {
        cylinder(r=radius, h=track, center=true);
    }
}

axle();